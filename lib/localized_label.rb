ActionView::Helpers::FormHelper.module_eval do
  def label_with_localization(object_name, method, text = nil, options = {})
    text ||= object_name.classify.constantize.human_attribute_name(method.to_s)
    label_without_localization(object_name, method, text, options)
  end
  alias_method_chain :label, :localization
end
