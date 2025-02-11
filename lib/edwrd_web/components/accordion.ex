defmodule EdwrdWeb.Components.Accordion do
  use Phoenix.Component

  slot :header

  def accordion(assigns) do
    ~H"""
    <div class="border-b border-slate-200">
      <button class="flex justify-between items-center py-5 text-slate-800">
        {render_slot(@header)}
        <div>{Phosphoricons.icon("x", class: "size-5 text-gray-400")}</div>
      </button>
      <div id="content-1" class="max-h-0 overflow-hidden transition-all duration-300 ease-in-out">
        <div class="pb-5 text-sm text-slate-500">
          Material Tailwind is a framework that enhances Tailwind CSS with additional styles and components.
        </div>
      </div>
    </div>
    """
  end
end

# <script>
#   function toggleAccordion(index) {
#     const content = document.getElementById(`content-${index}`);
#     const icon = document.getElementById(`icon-${index}`);

#     // SVG for Minus icon
#     const minusSVG = `
#       <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="w-4 h-4">
#         <path d="M3.75 7.25a.75.75 0 0 0 0 1.5h8.5a.75.75 0 0 0 0-1.5h-8.5Z" />
#       </svg>
#     `;

#     // SVG for Plus icon
#     const plusSVG = `
#       <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor" class="w-4 h-4">
#         <path d="M8.75 3.75a.75.75 0 0 0-1.5 0v3.5h-3.5a.75.75 0 0 0 0 1.5h3.5v3.5a.75.75 0 0 0 1.5 0v-3.5h3.5a.75.75 0 0 0 0-1.5h-3.5v-3.5Z" />
#       </svg>
#     `;

#     // Toggle the content's max-height for smooth opening and closing
#     if (content.style.maxHeight && content.style.maxHeight !== '0px') {
#       content.style.maxHeight = '0';
#       icon.innerHTML = plusSVG;
#     } else {
#       content.style.maxHeight = content.scrollHeight + 'px';
#       icon.innerHTML = minusSVG;
#     }
#   }
# </script>
