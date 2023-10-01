using Project.Command.Base;
using Project.Models;
using Project.ViewModels.Base;
using System;
using System.Collections.ObjectModel;
using System.IO;
using System.Text.Json;
using System.Threading.Tasks;
using System.Windows.Shapes;

namespace Project.ViewModels;

public class InfoViewModel : ViewModelBase
{

    private AcademyOptions options = new AcademyOptions();
    public AcademyOptions Options {
        get => options;
        set => base.PropertyChangeMethod(out options, value);
    }

    private readonly string infoPath = "Json\\academyOptions.json";

    public InfoViewModel()
    {
        LoadInfo();
    }

    private CommandBase saveCommand;
    public CommandBase SaveCommand => this.saveCommand ??= new CommandBase(
            execute: () => SaveInfo(),
    canExecute: () => true);


    private void LoadInfo()
    {
        if (File.ReadAllText(infoPath) == string.Empty || !File.Exists(infoPath))
            return;

        string json = File.ReadAllText(infoPath);
        this.options = JsonSerializer.Deserialize<AcademyOptions>(json);
    }

    private void SaveInfo()
    {
        if (!File.Exists(infoPath))
            File.Create(infoPath);

        string json = JsonSerializer.Serialize(Options);
        Console.WriteLine(json);

        File.WriteAllText(infoPath, json);
    }
}
