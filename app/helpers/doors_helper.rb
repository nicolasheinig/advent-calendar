module DoorsHelper
  def door_container_with_pos(array)
    x = array[0]
    y = array[1]
    tag :div, {class: 'door__container', style: "position: absolute; top: #{x}px; left: #{y}px"}
  end
end
