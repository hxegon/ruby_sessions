class HandPosition
  def name
    raise NotImpementedError
  end

  def beats
    raise NotImpementedError
  end

  def beat_by
    raise NotImpementedError
  end

  alias to_s name
end
