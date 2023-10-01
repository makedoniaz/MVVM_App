using Project.DTOs;
using Project.Models;
using Project.Repositories.Interfaces;
using Project.ViewModels.Base;
using System.Collections.ObjectModel;

namespace Project.ViewModels;

public class GroupsViewModel : ViewModelBase
{
    private readonly IGroupRepository groupRepository;

    public ObservableCollection<GroupGetDTO> Groups { get; set; }

    public GroupsViewModel(IGroupRepository groupRepository)
    {
        this.groupRepository = groupRepository;

        this.Groups = new ObservableCollection<GroupGetDTO>();
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
