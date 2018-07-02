/****************************************************************************
** Meta object code from reading C++ file 'gui.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/kautham/apps/viewer/gui.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'gui.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Kautham__GUI[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      14,   13,   13,   13, 0x05,

 // slots: signature, parameters, type, tag, flags
      33,   31,   13,   13, 0x0a,
      49,   13,   13,   13, 0x0a,
      57,   13,   13,   13, 0x0a,
      82,   13,   13,   13, 0x0a,
     100,   95,   13,   13, 0x0a,
     144,   13,   13,   13, 0x0a,
     161,   13,   13,   13, 0x0a,
     192,  184,   13,   13, 0x0a,
     211,   13,   13,   13, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_Kautham__GUI[] = {
    "Kautham::GUI\0\0stopSimulation()\0s\0"
    "setText(string)\0about()\0"
    "changeActiveBackground()\0scene2VRML()\0"
    "area\0changeDockAreaForOutput(Qt::DockWidgetArea)\0"
    "toogleBBOXflag()\0setModelsDefaultPath()\0"
    "waiting\0changeCursor(bool)\0attachObject()\0"
};

void Kautham::GUI::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        GUI *_t = static_cast<GUI *>(_o);
        switch (_id) {
        case 0: _t->stopSimulation(); break;
        case 1: _t->setText((*reinterpret_cast< string(*)>(_a[1]))); break;
        case 2: _t->about(); break;
        case 3: _t->changeActiveBackground(); break;
        case 4: _t->scene2VRML(); break;
        case 5: _t->changeDockAreaForOutput((*reinterpret_cast< Qt::DockWidgetArea(*)>(_a[1]))); break;
        case 6: _t->toogleBBOXflag(); break;
        case 7: _t->setModelsDefaultPath(); break;
        case 8: _t->changeCursor((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->attachObject(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData Kautham::GUI::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Kautham::GUI::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_Kautham__GUI,
      qt_meta_data_Kautham__GUI, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Kautham::GUI::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Kautham::GUI::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Kautham::GUI::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Kautham__GUI))
        return static_cast<void*>(const_cast< GUI*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int Kautham::GUI::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    }
    return _id;
}

// SIGNAL 0
void Kautham::GUI::stopSimulation()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}
QT_END_MOC_NAMESPACE
