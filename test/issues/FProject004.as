package net.fproject.somepkage
{
import net.fproject.fproject_internal;

public class FProject004
{
    fproject_internal var member:AbcClass;

    public function FProject004(name:String = CALRENDAR_NAME_DEFAULT,
                                 baseCalendar:AbcClass = null)
    {
        fproject_internal::member = AbcClass.getInstance(GregorianCalendar);
    }

   }
}
