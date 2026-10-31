package com.mengdao.galleryanalyze.hook;

import java.lang.reflect.Method;

/**
 * 沿父类 / 接口向上找方法。
 *
 * XposedHelpers.findMethodExact 只看本类声明的方法，遇到继承来的方法会抛
 * NoSuchMethodError（例如 WorkRequest.Builder#setConstraints、PreferenceGroup#addPreference）。
 */
final class Reflect {

    private Reflect() {
    }

    static Method findMethod(Class<?> clazz, String name, Class<?>... parameterTypes) {
        for (Class<?> c = clazz; c != null; c = c.getSuperclass()) {
            Method method = declared(c, name, parameterTypes);
            if (method != null) {
                return method;
            }
        }
        for (Class<?> c = clazz; c != null; c = c.getSuperclass()) {
            for (Class<?> iface : c.getInterfaces()) {
                Method method = findInInterface(iface, name, parameterTypes);
                if (method != null) {
                    return method;
                }
            }
        }
        throw new NoSuchMethodError(clazz.getName() + "#" + name + "@deep");
    }

    /** 找不到就返回 null，不抛。 */
    static Method findMethodOrNull(Class<?> clazz, String name, Class<?>... parameterTypes) {
        try {
            return findMethod(clazz, name, parameterTypes);
        } catch (NoSuchMethodError e) {
            return null;
        }
    }

    private static Method findInInterface(Class<?> iface, String name, Class<?>... parameterTypes) {
        Method method = declared(iface, name, parameterTypes);
        if (method != null) {
            return method;
        }
        for (Class<?> parent : iface.getInterfaces()) {
            method = findInInterface(parent, name, parameterTypes);
            if (method != null) {
                return method;
            }
        }
        return null;
    }

    private static Method declared(Class<?> clazz, String name, Class<?>... parameterTypes) {
        try {
            Method method = clazz.getDeclaredMethod(name, parameterTypes);
            method.setAccessible(true);
            return method;
        } catch (NoSuchMethodException e) {
            return null;
        }
    }
}
