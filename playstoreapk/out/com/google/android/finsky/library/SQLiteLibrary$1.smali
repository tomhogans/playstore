.class Lcom/google/android/finsky/library/SQLiteLibrary$1;
.super Ljava/lang/Object;
.source "SQLiteLibrary.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/SQLiteLibrary;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/finsky/library/LibraryEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/library/SQLiteLibrary;

.field final synthetic val$all:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/SQLiteLibrary;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->this$0:Lcom/google/android/finsky/library/SQLiteLibrary;

    iput-object p2, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 350
    iget-object v0, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 353
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 288
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 289
    :cond_11
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_16
    :goto_16
    return v0

    :cond_17
    iget-object v1, p0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    goto :goto_16
.end method

.method public next()Lcom/google/android/finsky/library/LibraryEntry;
    .registers 42

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 298
    const/4 v1, 0x0

    .line 338
    :goto_b
    return-object v1

    .line 301
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 303
    .local v14, libraryId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 304
    .local v15, backend:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, docId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 306
    .local v37, docType:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x5

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 307
    .local v4, offerType:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x6

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 308
    .local v5, documentHash:J
    const-string v1, "u-wl"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f4

    .line 309
    const/4 v1, 0x1

    move/from16 v0, v37

    if-ne v0, v1, :cond_7f

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/4 v12, 0x7

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, appCertificateHash:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0x8

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 313
    .local v8, appRefundPreDeliveryTimeoutMs:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0x9

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 315
    .local v10, appRefundPostDeliveryWindowMs:J
    new-instance v1, Lcom/google/android/finsky/library/LibraryAppEntry;

    invoke-direct/range {v1 .. v11}, Lcom/google/android/finsky/library/LibraryAppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJ)V

    goto :goto_b

    .line 318
    .end local v7           #appCertificateHash:Ljava/lang/String;
    .end local v8           #appRefundPreDeliveryTimeoutMs:J
    .end local v10           #appRefundPostDeliveryWindowMs:J
    :cond_7f
    const/16 v1, 0xf

    move/from16 v0, v37

    if-ne v0, v1, :cond_c3

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_c0

    const/16 v24, 0x1

    .line 320
    .local v24, autoRenewing:Z
    :goto_93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xb

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 321
    .local v18, initiationTimestamp:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xc

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 322
    .local v20, validUntilTimestamp:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xd

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 323
    .local v22, trialUntilTimestamp:J
    new-instance v12, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v25, v5

    invoke-direct/range {v12 .. v26}, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJJZJ)V

    move-object v1, v12

    goto/16 :goto_b

    .line 319
    .end local v18           #initiationTimestamp:J
    .end local v20           #validUntilTimestamp:J
    .end local v22           #trialUntilTimestamp:J
    .end local v24           #autoRenewing:Z
    :cond_c0
    const/16 v24, 0x0

    goto :goto_93

    .line 326
    :cond_c3
    const/16 v1, 0xb

    move/from16 v0, v37

    if-ne v0, v1, :cond_f4

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xe

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 328
    .local v30, purchaseInfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/SQLiteLibrary$1;->val$all:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 332
    .local v31, signature:Ljava/lang/String;
    if-eqz v30, :cond_f4

    if-eqz v31, :cond_f4

    .line 333
    new-instance v25, Lcom/google/android/finsky/library/LibraryInAppEntry;

    move-object/from16 v26, v2

    move-object/from16 v27, v14

    move-object/from16 v28, v3

    move/from16 v29, v4

    move-wide/from16 v32, v5

    invoke-direct/range {v25 .. v33}, Lcom/google/android/finsky/library/LibraryInAppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v1, v25

    goto/16 :goto_b

    .line 338
    .end local v30           #purchaseInfo:Ljava/lang/String;
    .end local v31           #signature:Ljava/lang/String;
    :cond_f4
    new-instance v32, Lcom/google/android/finsky/library/LibraryEntry;

    move-object/from16 v33, v2

    move-object/from16 v34, v14

    move/from16 v35, v15

    move-object/from16 v36, v3

    move/from16 v38, v4

    move-wide/from16 v39, v5

    invoke-direct/range {v32 .. v40}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V

    move-object/from16 v1, v32

    goto/16 :goto_b
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/android/finsky/library/SQLiteLibrary$1;->next()Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
