- dashboard: history_lookup_dashboard
  title: History Lookup Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 2rxpC7OoHLYkoEu5ELuqgG
  embed_style:
    background_color: "#f6f8fa"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: History Lookup Dashboard
    name: History Lookup Dashboard
    model: system__activity
    explore: history
    type: single_value
    fields: [history.id]
    filters: {}
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: History ID
    series_types: {}
    defaults_version: 1
    listen:
      History ID: history.id
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Query Sources
    name: Query Sources
    model: system__activity
    explore: history
    type: looker_single_record
    fields: [history.id, history.issuer_source, history.source]
    filters: {}
    limit: 500
    show_view_names: false
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: History ID
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: [history.id]
    listen:
      History ID: history.id
    row: 5
    col: 0
    width: 6
    height: 3
  - title: Link to Query Run
    name: Link to Query Run
    model: system__activity
    explore: history
    type: single_value
    fields: [history.id, query.link]
    filters: {}
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Query Link
    series_types: {}
    defaults_version: 1
    show_view_names: false
    hidden_fields: [history.id]
    listen:
      History ID: history.id
    row: 3
    col: 0
    width: 6
    height: 2
  - title: New Tile
    name: New Tile
    model: system__activity
    explore: history
    type: single_value
    fields: [history.id, query.model]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Model
    series_types: {}
    defaults_version: 1
    hidden_fields: [history.id]
    listen:
      History ID: history.id
    row: 8
    col: 8
    width: 8
    height: 2
  - title: New Tile
    name: New Tile (2)
    model: system__activity
    explore: history
    type: single_value
    fields: [history.id, query.view]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Explore Name
    series_types: {}
    defaults_version: 1
    hidden_fields: [history.id]
    listen:
      History ID: history.id
    row: 8
    col: 16
    width: 8
    height: 2
  - title: User Name
    name: User Name
    model: system__activity
    explore: history
    type: single_value
    fields: [history.id, user.name]
    filters: {}
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: User Name
    series_types: {}
    defaults_version: 1
    hidden_fields: [history.id]
    listen:
      History ID: history.id
    row: 8
    col: 0
    width: 8
    height: 2
  - title: Query Runtime Breakdown
    name: Query Runtime Breakdown
    model: system__activity
    explore: history
    type: looker_grid
    fields: [query.id, history.min_runtime, history.average_runtime, history.max_runtime,
      dashboard.id, look.id, history.query_run_count]
    filters: {}
    sorts: [history.min_runtime desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      query.id: Query ID
      dashboard.id: Dashboard ID
      look.id: Look ID
    series_cell_visualizations:
      history.min_runtime:
        is_active: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: History ID
    series_types: {}
    defaults_version: 1
    listen:
      History ID: history.id
      Query ID: query.id
    row: 0
    col: 6
    width: 18
    height: 8
  filters:
  - name: History ID
    title: History ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: system__activity
    explore: history
    listens_to_filters: []
    field: history.id
  - name: Query ID
    title: Query ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: system__activity
    explore: history
    listens_to_filters: []
    field: query.id
