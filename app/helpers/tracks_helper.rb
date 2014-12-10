module TracksHelper

  STATUS_ACTIVE = 1
  STATUS_FINISHED = 2
  STATUS_RESERVED = 3

  def tracks_status_options

    {
        STATUS_ACTIVE => t('active'),
        STATUS_FINISHED => t('finished'),
        STATUS_RESERVED => t('reserved')
    }
  end

end
