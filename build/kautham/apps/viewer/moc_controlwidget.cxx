/****************************************************************************
** Meta object code from reading C++ file 'controlwidget.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/kautham/apps/viewer/controlwidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'controlwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Kautham__ControlWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      29,   24,   23,   23, 0x05,

 // slots: signature, parameters, type, tag, flags
      52,   46,   23,   23, 0x08,
      71,   46,   23,   23, 0x08,
      92,   23,   23,   23, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_Kautham__ControlWidget[] = {
    "Kautham::ControlWidget\0\0text\0"
    "sendText(string)\0index\0sliderChanged(int)\0"
    "lineEditChanged(int)\0updateControls()\0"
};

void Kautham::ControlWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        ControlWidget *_t = static_cast<ControlWidget *>(_o);
        switch (_id) {
        case 0: _t->sendText((*reinterpret_cast< string(*)>(_a[1]))); break;
        case 1: _t->sliderChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->lineEditChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->updateControls(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData Kautham::ControlWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Kautham::ControlWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_Kautham__ControlWidget,
      qt_meta_data_Kautham__ControlWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Kautham::ControlWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Kautham::ControlWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Kautham::ControlWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Kautham__ControlWidget))
        return static_cast<void*>(const_cast< ControlWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int Kautham::ControlWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void Kautham::ControlWidget::sendText(string _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
