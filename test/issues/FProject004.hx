package net.fproject.somepkage;

import net.fproject.FprojectInternal;

class FProject004
{
    private var member : AbcClass;

    public function new(name : String = CALRENDAR_NAME_DEFAULT,
                        baseCalendar : AbcClass = null)
    {
        member = AbcClass.getInstance(GregorianCalendar);
    }
}

