package net.fproject.calendar
{
import net.fproject.fproject_internal;

public class WorkCalendar extends OptimisticLockModel
{
    fproject_internal var _gregorianCalendar:GregorianCalendar;

    public function WorkCalendar(name:String = CALRENDAR_NAME_DEFAULT,
                                 baseCalendar:WorkCalendar = null)
    {
        fproject_internal::_gregorianCalendar = InstanceFactory.getInstance(GregorianCalendar);
    }

   }
}
