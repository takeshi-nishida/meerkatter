# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Mpim
          #
          # This method closes a multiparty direct message channel.
          #
          # @option options [channel] :channel
          #   MPIM to close.
          # @see https://api.slack.com/methods/mpim.close
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/mpim/mpim.close.json
          def mpim_close(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('mpim.close', options)
          end

          #
          # This method returns a portion of messages/events from the specified multiparty direct message channel.
          # To read the entire history for a multiparty direct message, call the method with no latest or
          # oldest arguments, and then continue paging using the instructions below.
          #
          # @option options [channel] :channel
          #   Multiparty direct message to fetch history for.
          # @option options [timestamp] :latest
          #   End of time range of messages to include in results.
          # @option options [timestamp] :oldest
          #   Start of time range of messages to include in results.
          # @option options [Object] :inclusive
          #   Include messages with latest or oldest timestamp in results.
          # @option options [Object] :unreads
          #   Include unread_count_display in the output?.
          # @see https://api.slack.com/methods/mpim.history
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/mpim/mpim.history.json
          def mpim_history(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('mpim.history', options)
          end

          #
          # This method returns a list of all multiparty direct message channels that the user has.
          #
          # @see https://api.slack.com/methods/mpim.list
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/mpim/mpim.list.json
          def mpim_list(options = {})
            post('mpim.list', options)
          end

          #
          # This method moves the read cursor in a multiparty direct message channel.
          #
          # @option options [channel] :channel
          #   multiparty direct message channel to set reading cursor in.
          # @option options [timestamp] :ts
          #   Timestamp of the most recently seen message.
          # @see https://api.slack.com/methods/mpim.mark
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/mpim/mpim.mark.json
          def mpim_mark(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :ts missing') if options[:ts].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('mpim.mark', options)
          end

          #
          # This method opens a multiparty direct message.
          #
          # @option options [Object] :users
          #   Comma separated lists of users.  The ordering of the users is preserved whenever a MPIM group is returned.
          # @see https://api.slack.com/methods/mpim.open
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/mpim/mpim.open.json
          def mpim_open(options = {})
            throw ArgumentError.new('Required arguments :users missing') if options[:users].nil?
            post('mpim.open', options)
          end
        end
      end
    end
  end
end
