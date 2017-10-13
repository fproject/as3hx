package net.fproject.calendar;

import net.fproject.FprojectInternal;

class WorkCalendar extends OptimisticLockModel
{
    private var _gregorianCalendar : GregorianCalendar;
    
    public function new(name : String = CALRENDAR_NAME_DEFAULT,
            baseCalendar : WorkCalendar = null)
    {
        super();
        _gregorianCalendar = InstanceFactory.getInstance(GregorianCalendar);
    }
}

