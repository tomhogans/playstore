.class public Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.super Lcom/google/android/finsky/layout/AccessibleRelativeLayout;
.source "CheckedRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/AccessibleRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->mChecked:Z

    .line 31
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 54
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Lcom/google/android/finsky/layout/AccessibleRelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 55
    .local v0, drawableState:[I
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->mChecked:Z

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->mergeDrawableStates([I[I)[I

    .line 58
    :cond_0
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->mChecked:Z

    if-ne v0, p1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->mChecked:Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->refreshDrawableState()V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->setChecked(Z)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
