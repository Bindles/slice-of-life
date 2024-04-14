<%= form_with(model: todo) do |form| %>
  <% if todo.errors.any? %>
    <div style="color: red">
      <h2><%= pluralize(todo.errors.count, "error") %> prohibited this todo from being saved:</h2>

      <ul>
        <% todo.errors.each do |error| %>
          <li><%= error.full_message %></li>
        <% end %>
      </ul>
    </div>
  <% end %>

  <div>
    <%= form.label :name, style: "display: block" %>
    <%= form.text_field :name %>
  </div>

  <div>
    <%= form.label :notes, style: "display: block" %>
    <%= form.text_area :notes %>
  </div>

  <div>
    <%= form.label :minutes, style: "display: block" %>
    <%= form.number_field :minutes %>
  </div>

  <div>
    <%= form.submit %>
  </div>
<% end %>
