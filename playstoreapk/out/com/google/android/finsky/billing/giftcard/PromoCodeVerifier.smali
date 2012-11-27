.class public Lcom/google/android/finsky/billing/giftcard/PromoCodeVerifier;
.super Ljava/lang/Object;
.source "PromoCodeVerifier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAllDigits(Ljava/lang/String;)Z
    .registers 4
    .parameter "giftCardCode"

    .prologue
    .line 25
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 27
    .local v0, character:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_13

    const/16 v2, 0x39

    if-le v0, v2, :cond_15

    .line 28
    :cond_13
    const/4 v2, 0x0

    .line 31
    .end local v0           #character:C
    :goto_14
    return v2

    .line 25
    .restart local v0       #character:C
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 31
    .end local v0           #character:C
    :cond_18
    const/4 v2, 0x1

    goto :goto_14
.end method

.method public static verifyPromoCode(Ljava/lang/String;)Z
    .registers 3
    .parameter "promoCode"

    .prologue
    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_16

    invoke-static {p0}, Lcom/google/android/finsky/billing/giftcard/PromoCodeVerifier;->isAllDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
