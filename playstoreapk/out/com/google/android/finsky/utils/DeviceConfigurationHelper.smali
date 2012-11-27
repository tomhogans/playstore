.class public Lcom/google/android/finsky/utils/DeviceConfigurationHelper;
.super Ljava/lang/Object;
.source "DeviceConfigurationHelper.java"


# static fields
.field private static sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customizeDeviceConfiguration(Landroid/content/Context;Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;)V
    .registers 10
    .parameter "context"
    .parameter "deviceConfiguration"

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 128
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v5

    .line 132
    .local v5, systemAvailableFeatures:[Landroid/content/pm/FeatureInfo;
    if-eqz v5, :cond_1d

    .line 133
    move-object v0, v5

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_d
    if-ge v2, v3, :cond_1d

    aget-object v1, v0, v2

    .line 134
    .local v1, feature:Landroid/content/pm/FeatureInfo;
    iget-object v6, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_1a

    .line 135
    iget-object v6, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 133
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 140
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v1           #feature:Landroid/content/pm/FeatureInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1d
    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 145
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v7, "unknown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 146
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 148
    :cond_31
    return-void
.end method

.method public static declared-synchronized getDeviceConfiguration()Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    .registers 18

    .prologue
    .line 73
    const-class v16, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;

    monitor-enter v16

    :try_start_3
    sget-object v15, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    if-nez v15, :cond_11f

    .line 74
    new-instance v15, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    invoke-direct {v15}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;-><init>()V

    sput-object v15, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 76
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    .line 77
    .local v5, context:Landroid/content/Context;
    const-string v15, "activity"

    invoke-virtual {v5, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 79
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v3

    .line 81
    .local v3, ci:Landroid/content/pm/ConfigurationInfo;
    invoke-static {v5}, Lcom/google/android/finsky/utils/VendingUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v13

    .line 83
    .local v13, screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v15, "window"

    invoke-virtual {v5, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 84
    .local v14, wm:Landroid/view/WindowManager;
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 85
    .local v12, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    sget-object v15, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    iget v0, v3, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getTouchScreenId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setTouchScreen(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v15

    iget v0, v3, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getKeyboardConfigId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setKeyboard(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v15

    iget v0, v3, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getNavigationId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setNavigation(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v15

    iget v0, v3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setGlEsVersion(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v17

    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setScreenWidth(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v17

    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setScreenHeight(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    move-result-object v15

    iget v0, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setScreenDensity(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 96
    sget-object v17, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    iget v15, v3, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v15, v15, 0x1

    if-lez v15, :cond_da

    const/4 v15, 0x1

    :goto_9a
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setHasHardKeyboard(Z)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 98
    sget-object v17, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    iget v15, v3, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v15, v15, 0x2

    if-lez v15, :cond_dc

    const/4 v15, 0x1

    :goto_a8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setHasFiveWayNavigation(Z)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 101
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 102
    .local v4, config:Landroid/content/res/Configuration;
    sget-object v15, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    iget v0, v4, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->getScreenLayoutSizeId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->setScreenLayout(I)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 104
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_ce
    if-ge v8, v9, :cond_de

    aget-object v10, v2, v8

    .line 105
    .local v10, library:Ljava/lang/String;
    sget-object v15, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    invoke-virtual {v15, v10}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 104
    add-int/lit8 v8, v8, 0x1

    goto :goto_ce

    .line 96
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #library:Ljava/lang/String;
    :cond_da
    const/4 v15, 0x0

    goto :goto_9a

    .line 98
    :cond_dc
    const/4 v15, 0x0

    goto :goto_a8

    .line 108
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    :cond_de
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/FinskyApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    array-length v9, v2

    const/4 v8, 0x0

    :goto_ec
    if-ge v8, v9, :cond_f8

    aget-object v11, v2, v8

    .line 109
    .local v11, locale:Ljava/lang/String;
    sget-object v15, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    invoke-virtual {v15, v11}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    .line 108
    add-int/lit8 v8, v8, 0x1

    goto :goto_ec

    .line 112
    .end local v11           #locale:Ljava/lang/String;
    :cond_f8
    new-instance v7, Lcom/google/android/finsky/utils/GlExtensionReader;

    invoke-direct {v7}, Lcom/google/android/finsky/utils/GlExtensionReader;-><init>()V

    .line 113
    .local v7, extensionReader:Lcom/google/android/finsky/utils/GlExtensionReader;
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/GlExtensionReader;->getGlExtensions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_105
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 114
    .local v6, extension:Ljava/lang/String;
    sget-object v15, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    invoke-virtual {v15, v6}, Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;->addGlExtension(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    :try_end_116
    .catchall {:try_start_3 .. :try_end_116} :catchall_117

    goto :goto_105

    .line 73
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #ci:Landroid/content/pm/ConfigurationInfo;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v6           #extension:Ljava/lang/String;
    .end local v7           #extensionReader:Lcom/google/android/finsky/utils/GlExtensionReader;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #len$:I
    .end local v12           #metrics:Landroid/util/DisplayMetrics;
    .end local v13           #screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14           #wm:Landroid/view/WindowManager;
    :catchall_117
    move-exception v15

    monitor-exit v16

    throw v15

    .line 118
    .restart local v1       #am:Landroid/app/ActivityManager;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #ci:Landroid/content/pm/ConfigurationInfo;
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v7       #extensionReader:Lcom/google/android/finsky/utils/GlExtensionReader;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #len$:I
    .restart local v12       #metrics:Landroid/util/DisplayMetrics;
    .restart local v13       #screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v14       #wm:Landroid/view/WindowManager;
    :cond_11a
    :try_start_11a
    sget-object v15, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;

    invoke-static {v5, v15}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->customizeDeviceConfiguration(Landroid/content/Context;Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;)V

    .line 121
    :cond_11f
    sget-object v15, Lcom/google/android/finsky/utils/DeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;
    :try_end_121
    .catchall {:try_start_11a .. :try_end_121} :catchall_117

    monitor-exit v16

    return-object v15
.end method

.method private static getKeyboardConfigId(I)I
    .registers 2
    .parameter "configValue"

    .prologue
    const/4 v0, 0x0

    .line 156
    packed-switch p0, :pswitch_data_c

    .line 167
    :goto_4
    :pswitch_4
    return v0

    .line 160
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 162
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 164
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 156
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private static getNavigationId(I)I
    .registers 2
    .parameter "navigationValue"

    .prologue
    .line 194
    packed-switch p0, :pswitch_data_e

    .line 205
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 196
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 198
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 200
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 202
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 194
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private static getScreenLayoutSizeId(I)I
    .registers 3
    .parameter "screenLayoutSizeValue"

    .prologue
    .line 214
    and-int/lit8 v0, p0, 0xf

    .line 216
    .local v0, sizeBits:I
    packed-switch v0, :pswitch_data_10

    .line 227
    const/4 v1, 0x0

    :goto_6
    return v1

    .line 218
    :pswitch_7
    const/4 v1, 0x1

    goto :goto_6

    .line 220
    :pswitch_9
    const/4 v1, 0x2

    goto :goto_6

    .line 222
    :pswitch_b
    const/4 v1, 0x3

    goto :goto_6

    .line 224
    :pswitch_d
    const/4 v1, 0x4

    goto :goto_6

    .line 216
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method private static getTouchScreenId(I)I
    .registers 2
    .parameter "touchScreenValue"

    .prologue
    .line 176
    packed-switch p0, :pswitch_data_c

    .line 185
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 178
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 180
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 182
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 176
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public static uploadDeviceConfig(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/volley/Request;
    .registers 6
    .parameter "dfeApi"
    .parameter "deviceConfig"
    .parameter "gcmRegistrationId"
    .parameter "postRunnable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/DfeApi;",
            "Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;

    invoke-direct {v0, p3}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$1;-><init>(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;

    invoke-direct {v1, p3}, Lcom/google/android/finsky/utils/DeviceConfigurationHelper$2;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/api/DfeApi;->uploadDeviceConfig(Lcom/google/android/finsky/remoting/protos/DeviceConfigurationProto;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method
