module ApplicationHelper
  def render_if(condition, template, locals = {})
    render(template, locals) if condition
  end
end
