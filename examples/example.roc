app [main!] {
    cli: platform "https://github.com/roc-lang/basic-cli/releases/download/0.19.0/bi5zubJ-_Hva9vxxPq4kNx4WHX6oFs8OP6Ad0tCYlrY.tar.br",
    html: "../src/main.roc",
}

import cli.Stdout
import html.Html
import html.Attribute

main! = |_args|
    page = Html.html(
        [],
        [
            Html.body(
                [],
                [
                    Html.h1([], [Html.text("Roc")]),
                    Html.p(
                        [],
                        [
                            Html.text("My favourite language is "),
                            Html.a([Attribute.href("https://roc-lang.org/")], [Html.text("Roc")]),
                            Html.text("!"),
                        ],
                    ),
                ],
            ),
        ],
    )
    rendered_html = Html.render(page)
    Stdout.line!(rendered_html)
