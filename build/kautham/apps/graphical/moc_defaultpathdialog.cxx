/****************************************************************************
** Meta object code from reading C++ file 'defaultpathdialog.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/kautham/apps/graphical/defaultpathdialog.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'defaultpathdialog.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Kautham__DefaultPathDialog[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      28,   27,   27,   27, 0x08,
      43,   27,   27,   27, 0x08,
      61,   27,   27,   27, 0x08,
      75,   27,   27,   27, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_Kautham__DefaultPathDialog[] = {
    "Kautham::DefaultPathDialog\0\0addDirectory()\0"
    "removeDirectory()\0upDirectory()\0"
    "downDirectory()\0"
};

void Kautham::DefaultPathDialog::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        DefaultPathDialog *_t = static_cast<DefaultPathDialog *>(_o);
        switch (_id) {
        case 0: _t->addDirectory(); break;
        case 1: _t->removeDirectory(); break;
        case 2: _t->upDirectory(); break;
        case 3: _t->downDirectory(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData Kautham::DefaultPathDialog::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Kautham::DefaultPathDialog::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_Kautham__DefaultPathDialog,
      qt_meta_data_Kautham__DefaultPathDialog, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Kautham::DefaultPathDialog::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Kautham::DefaultPathDialog::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Kautham::DefaultPathDialog::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Kautham__DefaultPathDialog))
        return static_cast<void*>(const_cast< DefaultPathDialog*>(this));
    return QDialog::qt_metacast(_clname);
}

int Kautham::DefaultPathDialog::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
