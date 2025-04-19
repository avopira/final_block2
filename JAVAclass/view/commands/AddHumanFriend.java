package view.commands;
import view.View;

public class AddHumanFriends extends Command{
    public AddHumanFriends(View view) {
        super("Add a human friends member", view);
    }

    public void execute() {
        getView().addHumanFriends();
    }
}