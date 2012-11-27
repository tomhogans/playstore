.class public final Lcom/google/android/finsky/download/DownloadManagerConstants;
.super Ljava/lang/Object;
.source "DownloadManagerConstants.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final FROYO_CONTENT_URI:Landroid/net/Uri;

.field private static sDownloadManagerUsesFroyoStrings:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/download/DownloadManagerConstants;->CONTENT_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://downloads/download"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/download/DownloadManagerConstants;->FROYO_CONTENT_URI:Landroid/net/Uri;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/download/DownloadManagerConstants;->sDownloadManagerUsesFroyoStrings:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_9

    .line 111
    sget-object v0, Lcom/google/android/finsky/download/DownloadManagerConstants;->FROYO_CONTENT_URI:Landroid/net/Uri;

    .line 113
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/google/android/finsky/download/DownloadManagerConstants;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_8
.end method

.method public static getContentUriForContentObserver()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 126
    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isFroyoDownloadManager()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    sget-object v0, Lcom/google/android/finsky/download/DownloadManagerConstants;->FROYO_CONTENT_URI:Landroid/net/Uri;

    .line 129
    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/google/android/finsky/download/DownloadManagerConstants;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_8
.end method

.method public static getContentUriString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 141
    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->isFroyoDownloadManager()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://downloads/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_19
    return-object v0

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://downloads/my_downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public static getFileDestinationConstant()I
    .registers 2

    .prologue
    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_8

    .line 418
    const/4 v0, 0x0

    .line 420
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x4

    goto :goto_7
.end method

.method private static isFroyoDownloadManager()Z
    .registers 2

    .prologue
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_8

    .line 84
    const/4 v0, 0x0

    .line 99
    :goto_7
    return v0

    .line 85
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_10

    .line 86
    const/4 v0, 0x1

    goto :goto_7

    .line 90
    :cond_10
    sget-object v0, Lcom/google/android/finsky/download/DownloadManagerConstants;->sDownloadManagerUsesFroyoStrings:Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    .line 91
    sget-object v0, Lcom/google/android/finsky/download/DownloadManagerConstants;->sDownloadManagerUsesFroyoStrings:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_7

    .line 99
    :cond_1b
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->downloadManagerUsesFroyoStrings:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_7
.end method

.method public static isStatusCompleted(I)Z
    .registers 2
    .parameter "status"

    .prologue
    .line 484
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_8

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x190

    if-lt p0, v0, :cond_12

    const/16 v0, 0x258

    if-ge p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isStatusSuccess(I)Z
    .registers 2
    .parameter "status"

    .prologue
    .line 455
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static sniffDownloadManagerVersion(Landroid/net/Uri;)V
    .registers 6
    .parameter "fromUri"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_f

    .line 73
    :cond_e
    :goto_e
    return-void

    .line 60
    :cond_f
    sget-object v1, Lcom/google/android/finsky/download/DownloadManagerConstants;->sDownloadManagerUsesFroyoStrings:Ljava/lang/Boolean;

    if-nez v1, :cond_e

    .line 63
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, uriString:Ljava/lang/String;
    const-string v1, "content://downloads/download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 65
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/finsky/download/DownloadManagerConstants;->sDownloadManagerUsesFroyoStrings:Ljava/lang/Boolean;

    .line 66
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->downloadManagerUsesFroyoStrings:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_e

    .line 67
    :cond_31
    const-string v1, "content://downloads/my_downloads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 68
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/google/android/finsky/download/DownloadManagerConstants;->sDownloadManagerUsesFroyoStrings:Ljava/lang/Boolean;

    .line 69
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->downloadManagerUsesFroyoStrings:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_e

    .line 71
    :cond_47
    const-string v1, "Unknown download manager URI string: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e
.end method
