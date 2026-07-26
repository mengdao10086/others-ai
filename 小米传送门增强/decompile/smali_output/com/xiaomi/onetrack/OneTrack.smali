.class public Lcom/xiaomi/onetrack/OneTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/OneTrack$NetType;,
        Lcom/xiaomi/onetrack/OneTrack$UserIdType;,
        Lcom/xiaomi/onetrack/OneTrack$Mode;,
        Lcom/xiaomi/onetrack/OneTrack$IEventHook;,
        Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z


# instance fields
.field private d:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .registers 4

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/xiaomi/onetrack/api/m;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/onetrack/api/m;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    .line 91
    new-instance p1, Lcom/xiaomi/onetrack/DefaultEventHook;

    invoke-direct {p1}, Lcom/xiaomi/onetrack/DefaultEventHook;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->setEventHook(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_a

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;)V

    return-void

    .line 152
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "context is null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;
    .registers 3

    .line 95
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    return-object v0
.end method

.method public static isDisable()Z
    .registers 1

    .line 107
    sget-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->a:Z

    return v0
.end method

.method public static isRestrictGetNetworkInfo()Z
    .registers 1

    .line 143
    sget-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->c:Z

    return v0
.end method

.method public static isUseSystemNetTrafficOnly()Z
    .registers 1

    .line 115
    sget-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    return v0
.end method

.method public static registerCrashHook(Landroid/content/Context;)V
    .registers 1

    .line 124
    invoke-static {p0}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static sdkVersion()Ljava/lang/String;
    .registers 1

    .line 147
    const-string v0, "2.1.1"

    return-object v0
.end method

.method public static setAccessNetworkEnable(Landroid/content/Context;Z)V
    .registers 2

    .line 128
    invoke-static {p0}, Lcom/xiaomi/onetrack/OneTrack;->a(Landroid/content/Context;)V

    .line 129
    new-instance p0, Lcom/xiaomi/onetrack/OneTrack$1;

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/OneTrack$1;-><init>(Z)V

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    .line 99
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Z)V

    return-void
.end method

.method public static setDisable(Z)V
    .registers 1

    .line 103
    sput-boolean p0, Lcom/xiaomi/onetrack/OneTrack;->a:Z

    return-void
.end method

.method public static setRestrictGetNetworkInfo(Z)V
    .registers 1

    .line 139
    sput-boolean p0, Lcom/xiaomi/onetrack/OneTrack;->c:Z

    return-void
.end method

.method public static setTestMode(Z)V
    .registers 1

    .line 119
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->b(Z)V

    return-void
.end method

.method public static setUseSystemNetTrafficOnly()V
    .registers 1

    const/4 v0, 0x1

    .line 111
    sput-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    return-void
.end method


# virtual methods
.method public adTrack(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public adTrack(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public appActiveBroadcast(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public clearCommonProperty()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/m;->a()V

    return-void
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/onetrack/OnMainThreadException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasMemoryOaid()Z
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/m;->d()Z

    move-result v0

    return v0
.end method

.method public login(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/onetrack/OneTrack;->login(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V

    return-void
.end method

.method public login(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;Ljava/util/Map;Z)V

    return-void
.end method

.method public logout()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/OneTrack;->logout(Ljava/util/Map;Z)V

    return-void
.end method

.method public logout(Ljava/util/Map;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/util/Map;Z)V

    return-void
.end method

.method public refreshGetOaidTime()V
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/m;->c()V

    return-void
.end method

.method public removeCommonProperty(Ljava/lang/String;)V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setBasicModeEnable(Z)V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->c(Z)V

    return-void
.end method

.method public setCloseOaidDependMsaSDK(Z)V
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->d(Z)V

    return-void
.end method

.method public setCommonProperty(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->c(Ljava/util/Map;)V

    return-void
.end method

.method public setCustomPrivacyPolicyAccepted(Z)V
    .registers 3

    .line 265
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->b(Z)V

    return-void
.end method

.method public setDynamicCommonProperty(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;)V

    return-void
.end method

.method public setEventHook(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/OneTrack$IEventHook;)V

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setUserProfile(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserProfile(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/util/Map;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_a

    .line 168
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    :cond_a
    const-string p3, ","

    invoke-static {p3, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "exp_id"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p2, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {p2, p1, v0}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public track(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackEventFromH5(Ljava/lang/String;)V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public trackPluginEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackServiceQualityEvent(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->a(Lcom/xiaomi/onetrack/ServiceQualityEvent;)V

    return-void
.end method

.method public userProfileIncrement(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public userProfileIncrement(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack;->d:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/api/m;->b(Ljava/util/Map;)V

    return-void
.end method
