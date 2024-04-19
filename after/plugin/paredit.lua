local paredit = require"nvim-paredit"

paredit.setup({
    use_default_keys = false,
    filetypes = {"clojure"},
    cursor_behavior = "auto",

    indent = {
        enabled = false,
        indentor = require("nvim-paredit.indentation.native").indentor,
    },

    keys = {
        -- [[S-expression (Sexpr): In Lisp-like languages, code is organized into S-expressions,
        -- which are either atoms or lists enclosed in parentheses. For example, (add 2 3) is 
        -- an S-expression representing a function call to add with arguments 2 and 3.]]
        ["<localleader>@"] = { paredit.unwrap.unwrap_form_under_cursor, "Splice sexp" },

        -- SLURPING
        -- [[Slurp: Slurping is the action of moving an outer parenthesis to include one more item. For example,
        -- if you have (foo |bar baz) and you slurp in the closing parenthesis, it becomes (foo (bar baz)|).]]
        [">)"] = { paredit.api.slurp_forwards, "Slurp forwards" },
        ["<("] = { paredit.api.slurp_backwards, "Slurp backwards" },

        -- BARFING
        -- Barf: Barfing is the opposite of slurping. It removes an item from within the parentheses and moves it outside. 
        -- For instance, if you have (foo (bar baz)|), barfing on (bar baz) would result in (foo| bar baz).
        [">("] = { paredit.api.barf_backwards, "Barf backwards" },
        ["<)"] = { paredit.api.barf_forwards, "Barf forwards" },


        [">e"] = { paredit.api.drag_element_forwards, "Drag element right" },
        ["<e"] = { paredit.api.drag_element_backwards, "Drag element left" },

        [">f"] = { paredit.api.drag_form_forwards, "Drag form right" },
        ["<f"] = { paredit.api.drag_form_backwards, "Drag form left" },

        ["<localleader>o"] = { paredit.api.raise_form, "Raise form" },
        ["<localleader>O"] = { paredit.api.raise_element, "Raise element" },

        ["E"] = {
            paredit.api.move_to_next_element_tail,
            "Jump to next element tail",
            -- by default all keybindings are dot repeatable
            repeatable = false,
            mode = { "n", "x", "o", "v" },
        },

        ["W"] = {
            paredit.api.move_to_next_element_head,
            "Jump to next element head",
            repeatable = false,
            mode = { "n", "x", "o", "v" },
        },

        ["B"] = {
            paredit.api.move_to_prev_element_head,
            "Jump to previous element head",
            repeatable = false,
            mode = { "n", "x", "o", "v" },
        },
        ["gE"] = {
            paredit.api.move_to_prev_element_tail,
            "Jump to previous element tail",
            repeatable = false,
            mode = { "n", "x", "o", "v" },
        },

        ["("] = {
            paredit.api.move_to_parent_form_start,
            "Jump to parent form's head",
            repeatable = false,
            mode = { "n", "x", "v" },
        },
        [")"] = {
            paredit.api.move_to_parent_form_end,
            "Jump to parent form's tail",
            repeatable = false,
            mode = { "n", "x", "v" },
        },

    }

})

