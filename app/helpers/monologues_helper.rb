module MonologuesHelper
# _form.html.erb送信先(url:)のpathをactionによって切り替える
    def new_or_edit_path
        if action_name == "new"
            confirm_monologues_path
        elsif action_name == "edit"
            monologue_path
        end
    end
# _form.html.erbのsubmitボタンの名前をactionによって切り替える
    def new_or_edit_submit_message
        if action_name == "new" || action_name == "confirm"
            "ささやく"
        elsif action_name == "edit"
            "Edit"
        end
    end
end
