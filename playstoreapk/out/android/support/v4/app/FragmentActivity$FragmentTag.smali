.class Landroid/support/v4/app/FragmentActivity$FragmentTag;
.super Ljava/lang/Object;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentTag"
.end annotation


# static fields
.field public static final Fragment:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v4/app/FragmentActivity$FragmentTag;->Fragment:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x3t 0x0t 0x1t 0x1t
        0xd0t 0x0t 0x1t 0x1t
        0xd1t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
