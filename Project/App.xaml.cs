using Project.ViewModels.Base;
using Project.ViewModels;
using SimpleInjector;
using System.Windows;
using Project.Repositories;
using Project.Repositories.Interfaces;
using System;

namespace Project;

/// <summary>
/// Interaction logic for App.xaml
/// </summary>
public partial class App : Application
{
    public static Container Container { get; set; } = new Container();

    protected override void OnStartup(StartupEventArgs e)
    {
        this.RegisterContainer();

        this.Start<StudentsViewModel>();

        base.OnStartup(e);
    }

    private void Start<T>() where T : ViewModelBase
    {
        var mainView = new MainWindow();
        var mainViewModel = Container.GetInstance<MainViewModel>();
        mainViewModel.ActiveViewModel = Container.GetInstance<T>();

        mainView.DataContext = mainViewModel;

        mainView.ShowDialog();
    }

    private void RegisterContainer()
    {
        Container.RegisterSingleton<IGroupRepository, GroupDapperRepository>();
        Container.RegisterSingleton<IStudentRepository, StudentDapperRepository>();
        Container.RegisterSingleton<ITeacherRepository, TeacherDapperRepository>();

        Container.RegisterSingleton<MainViewModel>();
        Container.RegisterSingleton<GroupsViewModel>();
        Container.RegisterSingleton<StudentsViewModel>();
        Container.RegisterSingleton<TeachersViewModel>();

        Container.Verify();
    }
}
