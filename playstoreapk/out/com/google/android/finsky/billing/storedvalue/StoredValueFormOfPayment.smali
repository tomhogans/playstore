.class public Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;
.super Lcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;
.source "StoredValueFormOfPayment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment$StoredValueInstrument;
    }
.end annotation


# instance fields
.field private mAddLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;-><init>()V

    return-void
.end method

.method public static registerWithInstrumentFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 33
    const/4 v0, 0x7

    new-instance v1, Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/billing/InstrumentFactory;->registerFormOfPayment(ILcom/google/android/finsky/billing/InstrumentFactory$FormOfPayment;)V

    .line 34
    return-void
.end method


# virtual methods
.method public canAdd()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public create(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .registers 5
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;
    .registers 4
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment$StoredValueInstrument;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment$StoredValueInstrument;-><init>(Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getAddIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;->mAddLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateIntent(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Ljava/lang/String;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .parameter "eligibleInstrument"
    .parameter "accountName"
    .parameter "backendId"
    .parameter "uiMode"
    .parameter "referrerUrl"
    .parameter "referrerListCookie"

    .prologue
    .line 101
    invoke-static {p2, p1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->createIntent(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateAddressText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateAddress(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .registers 5
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .registers 3
    .parameter "instrument"

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasDisplayTitle()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 90
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getDisplayTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;->mAddLabel:Ljava/lang/String;

    .line 94
    :goto_c
    return-void

    .line 92
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueFormOfPayment;->mAddLabel:Ljava/lang/String;

    goto :goto_c
.end method
