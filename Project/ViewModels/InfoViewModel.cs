using Project.Command.Base;
using Project.ViewModels.Base;
using System;

namespace Project.ViewModels;

public class InfoViewModel : ViewModelBase
{
    private string NameInput { get; set; }

    private CommandBase saveCommand;
    public CommandBase SaveCommand => this.saveCommand ??= new CommandBase(
            execute: () => Console.Write("TEST"),
            canExecute: () => true);
}
