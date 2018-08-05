class HomePage < Hyperloop::Router::Component

  before_mount do
    SidebarStore.hide
  end

  after_mount do
    Element['.bm-overlay'].on(:click) {
      SidebarStore.hide
    }
  end

  render do
    DIV(id: 'example', class: 'index') do
      SidebarMenu()
      DIV(class: 'page_wrap full height') do
        AppMenu(section: 'home')
        mast_head
        stack_overview
        three_columns_of_text
      end
      AppFooter()
    end
  end

  def stack_overview
    BR()
    Sem.Header(size: :huge, textAlign: :center) { "Full-stack modern web tooling with everything you need to build stunning, interactive single-page web applications quickly in a language you love - Ruby." }
    BR()
    Sem.Grid(celled: true) do
      Sem.GridRow(columns: 1, class: 'no-padding') do
        Sem.GridColumn() { Sem.Image(src: '/dist/images/hyperstack_react.png', size: :huge, centered: true) }
      end
      Sem.GridRow(columns: 1, class: 'no-padding') do
        Sem.GridColumn() { Sem.Image(src: '/dist/images/webpack_opal.png', size: :medium, centered: true) }
      end
      Sem.GridRow(columns: 6, class: 'no-padding') do
        Sem.GridColumn() { }
        Sem.GridColumn(verticalAlign: :middle) { Sem.Image(src: '/dist/images/rack.png', size: :medium, centered: true) }
        Sem.GridColumn(verticalAlign: :middle) { Sem.Image(src: '/dist/images/rails.png', size: :medium, centered: true) }
        Sem.GridColumn(verticalAlign: :middle) { Sem.Image(src: '/dist/images/roda.png', size: :medium, centered: true) }
        Sem.GridColumn(verticalAlign: :middle) { Sem.Image(src: '/dist/images/sinatra.png', size: :medium, centered: true) }
        Sem.GridColumn() { }
      end
    end
    BR()
    Sem.Header(size: :huge, textAlign: :center) { "Hyperstack integrates with your favourage back-end to sunchronize data between any ActiveRecord based ORM and the front-end. We also include a hot-loading build environment!" }
    BR()
  end

  def mast_head
    DIV(class: 'masthead segment stopped') do
      DIV(class: 'ui page grid') do
        DIV(class: 'column') do
          DIV(class: 'introduction') do
            H1(class: 'ui inverted header') do
              SPAN(class: 'library') { 'Build spectactular web applications in Ruby' }
            end

            DIV(class: 'ui hidden divider')
            H2(class: 'ui header') do
              Sem.Header(class: 'inverted') { 'Hyperstack is open-source and supported by a friendly community' }
            end

            DIV(class: 'ui hidden divider')
            Link('/start', class: 'ui big basic inverted pink view-ui button getstartedbutton') do
              I(class: 'sidebar icon')
              "\n          Get Started\n        "
            end

          end
        end
      end
    end
  end

  def three_columns_of_text
    DIV(class: 'feature alternate ui vertical stripe segment') do
      DIV(class: 'ui three column equal height center aligned divided relaxed stackable page grid') do
        DIV(class: 'column') do
          H2(class: 'ui icon header') do
            IMG(class: 'ui icon image', src: 'dist/images/icons/paint.png')
            'Simplicity'
          end
          P() { 'Build interactive Web applications quickly. Hyperstack encourages rapid development with clean, pragmatic design. With developer productivity as our highest goal, Hyperstack takes care of much of the hassle of Web development, so you can focus on innovation and delivering end-user value.' }
        end

        DIV(class: 'column') do
          H2(class: 'ui icon header') do
            IMG(class: 'ui icon image', src: 'dist/images/icons/gear.png')
            'Isomorphic Ruby'
          end
          P() { 'One language. One model. One set of tests. The same business logic and domain models running on the clients and the server. You have unfettered access to the complete universe of JavaScript libraries (including React) from within your Ruby code. Hyperstack lets you build beautiful interactive user interfaces in Ruby.' }
        end

        DIV(class: 'column') do
          H2(class: 'ui icon header') do
            IMG(class: 'ui icon image', src: 'dist/images/icons/plugin.png')
            'Complete Architecture'
          end
          P() { 'Everything has a place in our architecture. Components deliver interactive user experiences, Operations encapsulate business logic, Models magically synchronize data between clients and servers, Policies govern authorization and Stores hold local state.' }
        end
      end
    end
  end
end
