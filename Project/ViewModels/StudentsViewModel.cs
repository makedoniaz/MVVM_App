using Project.Models;
using Project.Repositories.Interfaces;
using Project.ViewModels.Base;
using System.Collections.ObjectModel;

namespace Project.ViewModels;

public class StudentsViewModel : ViewModelBase
{

    private readonly IStudentRepository studentRepository;

    public ObservableCollection<Student> Students { get; set; }

    public StudentsViewModel(IStudentRepository productRepository)
    {
        this.studentRepository = productRepository;

        this.Students = new ObservableCollection<Student>();
        this.RefreshStudentList();
    }

    private void RefreshStudentList()
    {
        this.Students.Clear();

        var result = this.studentRepository.GetAll();

        foreach (var item in result)
        {
            this.Students.Add(item);
        }
    }
}
