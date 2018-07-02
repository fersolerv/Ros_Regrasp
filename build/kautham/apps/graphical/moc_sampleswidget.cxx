/****************************************************************************
** Meta object code from reading C++ file 'sampleswidget.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/kautham/apps/graphical/sampleswidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'sampleswidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Kautham__SamplesWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      29,   24,   23,   23, 0x05,

 // slots: signature, parameters, type, tag, flags
      52,   46,   23,   23, 0x08,
      70,   23,   23,   23, 0x08,
      86,   23,   23,   23, 0x08,
     101,   23,   23,   23, 0x08,
     113,   23,   23,   23, 0x08,
     128,   23,   23,   23, 0x08,
     141,   23,   23,   23, 0x08,
     160,   23,   23,   23, 0x08,
     177,   23,   23,   23, 0x08,
     195,   46,   23,   23, 0x08,
     217,   46,   23,   23, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_Kautham__SamplesWidget[] = {
    "Kautham::SamplesWidget\0\0text\0"
    "sendText(string)\0index\0changeSample(int)\0"
    "testCollision()\0testDistance()\0"
    "addSample()\0removeSample()\0getSamples()\0"
    "updateSampleList()\0copySampleList()\0"
    "clearSampleList()\0changeCollection(int)\0"
    "changeEngine(int)\0"
};

void Kautham::SamplesWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        SamplesWidget *_t = static_cast<SamplesWidget *>(_o);
        switch (_id) {
        case 0: _t->sendText((*reinterpret_cast< string(*)>(_a[1]))); break;
        case 1: _t->changeSample((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->testCollision(); break;
        case 3: _t->testDistance(); break;
        case 4: _t->addSample(); break;
        case 5: _t->removeSample(); break;
        case 6: _t->getSamples(); break;
        case 7: _t->updateSampleList(); break;
        case 8: _t->copySampleList(); break;
        case 9: _t->clearSampleList(); break;
        case 10: _t->changeCollection((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 11: _t->changeEngine((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData Kautham::SamplesWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Kautham::SamplesWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_Kautham__SamplesWidget,
      qt_meta_data_Kautham__SamplesWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Kautham::SamplesWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Kautham::SamplesWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Kautham::SamplesWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Kautham__SamplesWidget))
        return static_cast<void*>(const_cast< SamplesWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int Kautham::SamplesWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    return _id;
}

// SIGNAL 0
void Kautham::SamplesWidget::sendText(string _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
