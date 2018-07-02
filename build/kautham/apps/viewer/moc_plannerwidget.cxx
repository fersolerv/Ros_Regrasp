/****************************************************************************
** Meta object code from reading C++ file 'plannerwidget.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/kautham/apps/viewer/plannerwidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'plannerwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Kautham__PlannerWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      32,   24,   23,   23, 0x05,

 // slots: signature, parameters, type, tag, flags
      51,   23,   23,   23, 0x0a,
      68,   23,   23,   23, 0x0a,
      86,   23,   23,   23, 0x08,
      96,   23,   23,   23, 0x08,
     107,   23,   23,   23, 0x08,
     118,   23,   23,   23, 0x08,
     140,  134,   23,   23, 0x08,
     156,   23,   23,   23, 0x08,
     169,   23,   23,   23, 0x08,
     186,   23,   23,   23, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_Kautham__PlannerWidget[] = {
    "Kautham::PlannerWidget\0\0waiting\0"
    "changeCursor(bool)\0stopSimulation()\0"
    "startSimulation()\0getPath()\0saveData()\0"
    "loadData()\0moveAlongPath()\0index\0"
    "showSample(int)\0tryConnect()\0"
    "chkCameraClick()\0simulatePath()\0"
};

void Kautham::PlannerWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PlannerWidget *_t = static_cast<PlannerWidget *>(_o);
        switch (_id) {
        case 0: _t->changeCursor((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->stopSimulation(); break;
        case 2: _t->startSimulation(); break;
        case 3: _t->getPath(); break;
        case 4: _t->saveData(); break;
        case 5: _t->loadData(); break;
        case 6: _t->moveAlongPath(); break;
        case 7: _t->showSample((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->tryConnect(); break;
        case 9: _t->chkCameraClick(); break;
        case 10: _t->simulatePath(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData Kautham::PlannerWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Kautham::PlannerWidget::staticMetaObject = {
    { &KauthamWidget::staticMetaObject, qt_meta_stringdata_Kautham__PlannerWidget,
      qt_meta_data_Kautham__PlannerWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Kautham::PlannerWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Kautham::PlannerWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Kautham::PlannerWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Kautham__PlannerWidget))
        return static_cast<void*>(const_cast< PlannerWidget*>(this));
    return KauthamWidget::qt_metacast(_clname);
}

int Kautham::PlannerWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = KauthamWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void Kautham::PlannerWidget::changeCursor(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
