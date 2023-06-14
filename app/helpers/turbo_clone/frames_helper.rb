module TurboClone::FramesHelper
  def turbo_frame_tag(resource, &block)
    # resource is a provider of the id and &block is a code block for which we will be surrounding in turbo-frame tags
    id = resource.respond_to?(:to_key) ? dom_id(resource) : resource
    tag.turbo_frame(id: id, &block)
  end
end