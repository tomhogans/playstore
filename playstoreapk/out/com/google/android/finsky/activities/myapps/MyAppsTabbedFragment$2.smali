.class Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "MyAppsTabbedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 189
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 190
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-object v1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v1}, Lcom/google/android/finsky/installer/InstallPolicies;->isMobileNetwork()Z

    move-result v0

    .line 191
    .local v0, newMobileDataState:Z
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iget-boolean v1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mMobileDataState:Z

    if-eq v0, v1, :cond_2f

    .line 192
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;
    invoke-static {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$100(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 193
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mTabbedAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;
    invoke-static {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$100(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedAdapter;->refreshAllTabs()V

    .line 195
    :cond_2b
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    iput-boolean v0, v1, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->mMobileDataState:Z

    .line 198
    .end local v0           #newMobileDataState:Z
    :cond_2f
    return-void
.end method
