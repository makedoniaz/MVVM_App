using Project.Models;
using Project.Repositories.Interfaces;
using Project.ViewModels.Base;
using System.Collections.ObjectModel;

namespace Project.ViewModels;

public class TeachersViewModel : ViewModelBase
{
    private readonly ITeacherRepository teacherRepository;

    public ObservableCollection<Teacher> Teachers { get; set; }

    public TeachersViewModel(ITeacherRepository teacherRepository)
    {
        this.teacherRepository = teacherRepository;

        this.Teachers = new ObservableCollection<Teacher>();
        this.RefreshStudentList();
    }

    private void RefreshStudentList()
    {
        this.Teachers.Clear();

        var result = this.teacherRepository.GetAll();

        foreach (var item in result)
        {
            this.Teachers.Add(item);
        }
    }
}
