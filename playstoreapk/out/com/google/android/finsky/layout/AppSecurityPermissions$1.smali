.class final Lcom/google/android/finsky/layout/AppSecurityPermissions$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)I
    .registers 7
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-boolean v0, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->hasNewPermission:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_7
    iget-boolean v3, p1, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->hasNewPermission:Z

    if-eqz v3, :cond_f

    :goto_b
    sub-int/2addr v0, v1

    return v0

    :cond_d
    move v0, v2

    goto :goto_7

    :cond_f
    move v1, v2

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    check-cast p1, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    .end local p1
    check-cast p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$1;->compare(Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)I

    move-result v0

    return v0
.end method