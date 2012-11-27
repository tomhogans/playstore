.class public Landroid/support/v4/view/ViewCompatJB;
.super Ljava/lang/Object;
.source "ViewCompatJB.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 2
    .parameter "view"

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 1
    .parameter "view"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 37
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 2
    .parameter "view"
    .parameter "mode"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 58
    return-void
.end method
