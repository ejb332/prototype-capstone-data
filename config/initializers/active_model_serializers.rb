ActiveSupport.on_load(:active_mode_serializers) do
  ActiveModel::Serializer.root = false

  ActiveModel::ArraySerializer.root = false
  ActiveModel::Serializer.config.adapter = ActiveModel::Serializer::Adapter::JsonApi
end