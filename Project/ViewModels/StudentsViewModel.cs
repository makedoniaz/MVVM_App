using Project.Models;
using Project.ViewModels.Base;
using System.Collections.ObjectModel;

namespace Project.ViewModels;

public class StudentsViewModel : ViewModelBase
{

    public ObservableCollection<Student> Students { get; set; }

    public StudentsViewModel()
    {
        this.Students = new ObservableCollection<Student>();
    }
}
