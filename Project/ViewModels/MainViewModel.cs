using Project.Command.Base;
using Project.ViewModels.Base;

namespace Project.ViewModels;

public class MainViewModel : ViewModelBase
{

    #region Fields
    private ViewModelBase activeViewModel;

    public ViewModelBase ActiveViewModel
    {
        get => activeViewModel;
        set => base.PropertyChangeMethod(out activeViewModel, value);
    }
    #endregion

    #region Commands
    private CommandBase infoCommand;
    public CommandBase InfoCommand => this.infoCommand ??= new CommandBase(
            execute: () => this.ActiveViewModel = new InfoViewModel(),
            canExecute: () => true);


    private CommandBase groupsCommand;
    public CommandBase GroupsCommand => this.groupsCommand ??= new CommandBase(
            execute: () => this.ActiveViewModel = new GroupsViewModel(),
            canExecute: () => true);


    private CommandBase studentsCommand;
    public CommandBase StudentsCommand => this.studentsCommand ??= new CommandBase(
            execute: () => this.ActiveViewModel = new StudentsViewModel(),
            canExecute: () => true);


    private CommandBase teachersCommand;
    public CommandBase TeachersCommand => this.teachersCommand ??= new CommandBase(
            execute: () => this.ActiveViewModel = new TeachersViewModel(),
            canExecute: () => true);
    #endregion
}
