.class public Lcom/google/android/finsky/billing/IabParameters;
.super Ljava/lang/Object;
.source "IabParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/billing/IabParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final billingApiVersion:I

.field public final developerPayload:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final packageSignatureHash:Ljava/lang/String;

.field public final packageVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/finsky/billing/IabParameters$1;

    invoke-direct {v0}, Lcom/google/android/finsky/billing/IabParameters$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/billing/IabParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "billingApiVersion"
    .parameter "packageName"
    .parameter "packageVersionCode"
    .parameter "packageSignatureHash"
    .parameter "developerPayload"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    .line 43
    iput-object p2, p0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    .line 45
    iput-object p4, p0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-ne p0, p1, :cond_5

    .line 99
    :cond_4
    :goto_4
    return v1

    .line 74
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 75
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 78
    check-cast v0, Lcom/google/android/finsky/billing/IabParameters;

    .line 80
    .local v0, that:Lcom/google/android/finsky/billing/IabParameters;
    iget v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    iget v4, v0, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    .line 81
    goto :goto_4

    .line 83
    :cond_1e
    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    :cond_2c
    move v1, v2

    .line 85
    goto :goto_4

    .line 83
    :cond_2e
    iget-object v3, v0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    if-nez v3, :cond_2c

    .line 87
    :cond_32
    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    :cond_40
    move v1, v2

    .line 89
    goto :goto_4

    .line 87
    :cond_42
    iget-object v3, v0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    if-nez v3, :cond_40

    .line 91
    :cond_46
    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    :cond_54
    move v1, v2

    .line 94
    goto :goto_4

    .line 91
    :cond_56
    iget-object v3, v0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    if-nez v3, :cond_54

    .line 96
    :cond_5a
    iget v3, p0, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    iget v4, v0, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 97
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 108
    const/16 v0, 0x2a

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/billing/IabParameters;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/google/android/finsky/billing/IabParameters;->packageVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/billing/IabParameters;->packageSignatureHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/billing/IabParameters;->developerPayload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    :goto_1c
    iget v0, p0, Lcom/google/android/finsky/billing/IabParameters;->billingApiVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void

    .line 63
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1c
.end method
