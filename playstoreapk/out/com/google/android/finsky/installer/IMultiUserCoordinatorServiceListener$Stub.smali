.class public abstract Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub;
.super Landroid/os/Binder;
.source "IMultiUserCoordinatorServiceListener.java"

# interfaces
.implements Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.google.android.finsky.installer.IMultiUserCoordinatorServiceListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.google.android.finsky.installer.IMultiUserCoordinatorServiceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_2a

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 45
    :sswitch_9
    const-string v2, "com.google.android.finsky.installer.IMultiUserCoordinatorServiceListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v2, "com.google.android.finsky.installer.IMultiUserCoordinatorServiceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub;->packageAcquired(Ljava/lang/String;)V

    goto :goto_8

    .line 58
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1c
    const-string v2, "com.google.android.finsky.installer.IMultiUserCoordinatorServiceListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener$Stub;->packageReleased(Ljava/lang/String;)V

    goto :goto_8

    .line 41
    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
