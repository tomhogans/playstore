.class public Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;
.super Ljava/lang/Object;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarrierOverride"
.end annotation


# instance fields
.field public final countryCode:Ljava/lang/String;

.field public final countryName:Ljava/lang/String;

.field public final simCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "countryName"
    .parameter "countryCode"
    .parameter "simCode"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;->countryName:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;->countryCode:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;->simCode:Ljava/lang/String;

    .line 86
    return-void
.end method
