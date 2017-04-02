module GroupsHelper
  def render_group_decsription(group)
    simple_format(group.description)
  end
end
