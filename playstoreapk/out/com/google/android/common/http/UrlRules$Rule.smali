.class public Lcom/google/android/common/http/UrlRules$Rule;
.super Ljava/lang/Object;
.source "UrlRules.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/UrlRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;


# instance fields
.field public final mBlock:Z

.field public final mName:Ljava/lang/String;

.field public final mPrefix:Ljava/lang/String;

.field public final mRewrite:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/common/http/UrlRules$Rule;

    invoke-direct {v0}, Lcom/google/android/common/http/UrlRules$Rule;-><init>()V

    sput-object v0, Lcom/google/android/common/http/UrlRules$Rule;->DEFAULT:Lcom/google/android/common/http/UrlRules$Rule;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "name"
    .parameter "rule"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/common/http/UrlRules$RuleFormatException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/google/android/common/http/UrlRules;->access$000()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, words:[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_18

    new-instance v5, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    const-string v6, "Empty rule"

    invoke-direct {v5, v6}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_18
    const/4 v5, 0x0

    aget-object v5, v4, v5

    iput-object v5, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, rewrite:Ljava/lang/String;
    const/4 v0, 0x0

    .line 93
    .local v0, block:Z
    const/4 v1, 0x1

    .local v1, pos:I
    :goto_20
    array-length v5, v4

    if-ge v1, v5, :cond_62

    .line 94
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, word:Ljava/lang/String;
    const-string v5, "rewrite"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    add-int/lit8 v5, v1, 0x1

    array-length v6, v4

    if-ge v5, v6, :cond_3d

    .line 96
    add-int/lit8 v5, v1, 0x1

    aget-object v2, v4, v5

    .line 97
    add-int/lit8 v1, v1, 0x2

    goto :goto_20

    .line 98
    :cond_3d
    const-string v5, "block"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 99
    const/4 v0, 0x1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 102
    :cond_49
    new-instance v5, Lcom/google/android/common/http/UrlRules$RuleFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal rule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/common/http/UrlRules$RuleFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    .end local v3           #word:Ljava/lang/String;
    :cond_62
    iput-object v2, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    .line 108
    iput-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    .line 109
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mBlock:Z

    if-eqz v0, :cond_6

    .line 126
    const/4 p1, 0x0

    .line 130
    .end local p1
    :cond_5
    :goto_5
    return-object p1

    .line 127
    .restart local p1
    :cond_6
    iget-object v0, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mRewrite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter "o"

    .prologue
    .line 136
    check-cast p1, Lcom/google/android/common/http/UrlRules$Rule;

    .end local p1
    iget-object v0, p1, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/common/http/UrlRules$Rule;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
