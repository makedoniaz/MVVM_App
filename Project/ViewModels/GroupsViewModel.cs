using Project.Models;
using Project.Repositories.Interfaces;
using Project.ViewModels.Base;
using System.Collections.ObjectModel;

namespace Project.ViewModels;

public class GroupsViewModel : ViewModelBase
{
    private readonly IGroupRepository groupRepository;

    public ObservableCollection<Models.Group> Groups { get; set; }

    public GroupsViewModel(IGroupRepository groupRepository)
    {
        this.groupRepository = groupRepository;

        this.Groups = new ObservableCollection<Models.Group>();
        this.RefreshStudentList();
    }

    private void RefreshStudentList()
    {
        this.Groups.Clear();

        var result = this.groupRepository.GetAll();

        foreach (var item in result)
        {
            this.Groups.Add(item);
        }
    }
}
