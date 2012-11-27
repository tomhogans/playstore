.class Lcom/google/android/finsky/services/RestoreService$RestoreTracker;
.super Ljava/lang/Object;
.source "RestoreService.java"

# interfaces
.implements Lcom/google/android/finsky/installer/InstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreTracker"
.end annotation


# instance fields
.field private final mAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailed:I

.field private mSucceeded:I

.field final synthetic this$0:Lcom/google/android/finsky/services/RestoreService;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/services/RestoreService;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 88
    iput-object p1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    .line 99
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    .line 106
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAllDownloads:Ljava/util/Set;

    .line 109
    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    .line 112
    iput v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/services/RestoreService;Lcom/google/android/finsky/services/RestoreService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;-><init>(Lcom/google/android/finsky/services/RestoreService;)V

    return-void
.end method


# virtual methods
.method public finish(Ljava/lang/String;Z)V
    .registers 4
    .parameter "packageName"
    .parameter "success"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 153
    if-eqz p2, :cond_19

    .line 154
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    .line 158
    :goto_15
    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->stopServiceIfDone()V

    .line 160
    :cond_18
    return-void

    .line 156
    :cond_19
    iget v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    goto :goto_15
.end method

.method public finishAccount(Ljava/lang/String;)V
    .registers 3
    .parameter "accountName"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->stopServiceIfDone()V

    .line 129
    return-void
.end method

.method public isAccountInFlight(Ljava/lang/String;)Z
    .registers 3
    .parameter "accountName"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTracked(Ljava/lang/String;)Z
    .registers 3
    .parameter "packageName"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAllDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .registers 9
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    sget-object v0, Lcom/google/android/finsky/services/RestoreService$3;->$SwitchMap$com$google$android$finsky$installer$InstallerListener$InstallerPackageEvent:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 212
    :goto_e
    :pswitch_e
    return-void

    .line 193
    :pswitch_f
    const-string v0, "Restore package %s download cancelled"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0, p1, v3}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_e

    .line 197
    :pswitch_1c
    const-string v0, "Restore package %s download error %d"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0, p1, v3}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_e

    .line 201
    :pswitch_2f
    const-string v0, "Restore package %s install error %d"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0, p1, v3}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_e

    .line 205
    :pswitch_42
    const-string v0, "Restore package %s install complete"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0, p1, v4}, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->finish(Ljava/lang/String;Z)V

    goto :goto_e

    .line 184
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_1c
        :pswitch_2f
        :pswitch_42
    .end packed-switch
.end method

.method public start(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAllDownloads:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public startAccount(Ljava/lang/String;)V
    .registers 3
    .parameter "accountName"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public stopServiceIfDone()V
    .registers 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 164
    const-string v0, "Restore complete with %d success and %d failed."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mSucceeded:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->mFailed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    iget-object v1, p0, Lcom/google/android/finsky/services/RestoreService$RestoreTracker;->this$0:Lcom/google/android/finsky/services/RestoreService;

    #getter for: Lcom/google/android/finsky/services/RestoreService;->mServiceStartId:I
    invoke-static {v1}, Lcom/google/android/finsky/services/RestoreService;->access$100(Lcom/google/android/finsky/services/RestoreService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/services/RestoreService;->stopSelf(I)V

    .line 168
    :cond_35
    return-void
.end method
