using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace Project.Models;

public class AcademyOptions : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler? PropertyChanged;

    private string? name;
    private string? adress;

    public string? Name {
        get => name;
        set => PropertyChangeMethod(out name, value);
    }

    public string? Adress {
        get => adress;
        set => PropertyChangeMethod(out adress, value);
    }


    protected void PropertyChangeMethod<T>(out T field, T value, [CallerMemberName] string propName = "")
    {
        field = value;

        if (this.PropertyChanged != null)
            this.PropertyChanged.Invoke(this, new PropertyChangedEventArgs(propName));
    }
}
