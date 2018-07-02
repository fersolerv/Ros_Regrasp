/****************************************************************************
** Meta object code from reading C++ file 'kauthamgui.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/kautham/apps/viewer/kauthamgui.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'kauthamgui.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Application[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      25,   13,   12,   12, 0x0a,
      43,   12,   12,   12, 0x2a,
      54,   12,   12,   12, 0x0a,
      65,   12,   12,   12, 0x0a,
      78,   12,   12,   12, 0x0a,
      93,   12,   12,   12, 0x0a,
     100,   12,   12,   12, 0x0a,
     112,   12,   12,   12, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_Application[] = {
    "Application\0\0problemFile\0openFile(QString)\0"
    "openFile()\0saveFile()\0saveAsFile()\0"
    "closeProblem()\0quit()\0rosUpdate()\0"
    "clearRecentFiles()\0"
};

void Application::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        Application *_t = static_cast<Application *>(_o);
        switch (_id) {
        case 0: _t->openFile((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->openFile(); break;
        case 2: _t->saveFile(); break;
        case 3: _t->saveAsFile(); break;
        case 4: _t->closeProblem(); break;
        case 5: _t->quit(); break;
        case 6: _t->rosUpdate(); break;
        case 7: _t->clearRecentFiles(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData Application::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Application::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Application,
      qt_meta_data_Application, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Application::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Application::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Application::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Application))
        return static_cast<void*>(const_cast< Application*>(this));
    return QObject::qt_metacast(_clname);
}

int Application::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
