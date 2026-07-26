.class public Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;
.super Ljava/lang/Object;
.source "ClipboardUtils.java"


# static fields
.field public static CLASS_NAME:Ljava/lang/String; = "com.miui.contentextension.setting.cta.PrivacyClipboardActivity"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static cancelMirrorNotification(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 214
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mirror.ACTION_CANCEL_EXTRACT_TEXT_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    const-string v1, "com.xiaomi.mirror"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static dealUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    const-string p0, ""

    return-object p0

    .line 72
    :cond_9
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_28
    return-object p0
.end method

.method public static generateCarIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.contentextension.ACTION_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v1, "com.miui.contentextension.clipboard.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "method"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string p0, "address"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static generateDeviceListByType(Landroid/content/Context;Ljava/util/List;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_23

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_71

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    .line 146
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result p2

    const/4 v1, 0x4

    if-ne v1, p2, :cond_c

    .line 147
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_23
    const/4 v2, 0x3

    if-ne p2, v2, :cond_46

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    .line 152
    invoke-virtual {p2}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result v2

    if-ne v1, v2, :cond_2a

    invoke-static {p0, p2}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->isRegisterCapability(Landroid/content/Context;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 153
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_46
    const/4 v2, 0x2

    if-ne p2, v2, :cond_71

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4d
    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    .line 158
    invoke-virtual {p2}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result v3

    if-eq v1, v3, :cond_61

    if-ne v2, v3, :cond_67

    .line 160
    :cond_61
    invoke-static {p0, p2}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->isRegisterCapability(Landroid/content/Context;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)Z

    move-result v3

    if-nez v3, :cond_6d

    :cond_67
    invoke-static {p0, p2}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->isPcSupport(Landroid/content/Context;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 161
    :cond_6d
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_71
    return-object v0
.end method

.method public static generateNerEntityListByType(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/Entity;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_d

    .line 131
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_32

    :cond_d
    const/4 v3, 0x2

    if-eq p2, v3, :cond_32

    const/4 v3, 0x4

    if-ne p2, v3, :cond_1a

    .line 132
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->supportMail(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_32

    :cond_1a
    const/4 v3, 0x3

    if-ne p2, v3, :cond_42

    .line 135
    sget-boolean p2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p2, :cond_42

    invoke-static {p0}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->supportTel(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 136
    new-instance p0, Lcom/miui/contentextension/data/recognition/Entity;

    const-string p2, "TEL"

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/miui/contentextension/data/recognition/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 137
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 133
    :cond_32
    :goto_32
    new-instance p0, Lcom/miui/contentextension/data/recognition/Entity;

    invoke-static {p1, p2}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->transferContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->transferType(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/miui/contentextension/data/recognition/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 134
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    :goto_42
    return-object v0
.end method

.method public static generateNerIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 170
    const-string p0, "Taplus.ClipboardUtils"

    const-string p1, "generateIntent: content is null"

    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    const-string v1, "URL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 176
    const-string p0, "android.intent.action.VIEW"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-static {p2}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->dealUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 178
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_b7

    .line 179
    :cond_33
    const-string v1, "TEL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 180
    const-string p0, "android.intent.action.DIAL"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "tel:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 182
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_b7

    .line 183
    :cond_59
    const-string v1, "LOC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#Intent;action=android.intent.action.SEND;category=android.intent.category.DEFAULT;type=text/plain;launchFlags=0x18080000;package=com.autonavi.minimap;S.sourceApplication=xiaomi;S.android.intent.extra.TEXT="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.amap.com/search/mapview/keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&src=xiaomi_portal"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 186
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/utils/AppsUtils;->generateOpenIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_b7

    .line 187
    :cond_92
    const-string p0, "MAIL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b7

    .line 188
    const-string p0, "android.intent.action.SENDTO"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mailto:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 190
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_b7
    :goto_b7
    return-object v0
.end method

.method public static generatePhonePadIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MIUI_PLUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "com.miui.contentextension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string p1, "type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static generateWindowIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.contentextension.ACTION_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    const-string v1, "com.miui.contentextension.clipboard.pc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v1, "method"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string p0, "url"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static hasContentExtensionServiceInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 117
    new-instance v0, Lcom/xiaomi/continuity/ServiceName$Builder;

    invoke-direct {v0}, Lcom/xiaomi/continuity/ServiceName$Builder;-><init>()V

    const-string v1, "ContentExtensionService"

    .line 118
    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/ServiceName$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/continuity/ServiceName$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/ServiceName$Builder;->setPackageName(Ljava/lang/String;)Lcom/xiaomi/continuity/ServiceName$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/xiaomi/continuity/ServiceName$Builder;->build()Lcom/xiaomi/continuity/ServiceName;

    move-result-object v0

    .line 121
    invoke-static {p0}, Lcom/xiaomi/continuity/networking/NetworkingManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/networking/NetworkingManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/continuity/networking/NetworkingManager;->getServiceInfo(Ljava/lang/String;Lcom/xiaomi/continuity/ServiceName;)Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public static isPcSupport(Landroid/content/Context;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)Z
    .registers 6

    .line 104
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_21

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pc platform, appVersion:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDevicePcAppVersionFromMiuiPlus()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Taplus.ClipboardUtils"

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_21
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceSource()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3b

    .line 108
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result p0

    if-ne v1, p0, :cond_3a

    .line 109
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDevicePcAppVersionFromMiuiPlus()J

    move-result-wide p0

    const-wide/16 v0, 0x4

    cmp-long p0, p0, v0

    if-ltz p0, :cond_3a

    move v2, v3

    :cond_3a
    return v2

    .line 110
    :cond_3b
    invoke-static {}, Lcom/miui/contentextension/App;->isMiuiLiteRom()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 111
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->hasContentExtensionServiceInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4a
    return v2
.end method

.method public static isRegisterCapability(Landroid/content/Context;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceSource()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 94
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceCapabilitiesFromMiuiPlus()Ljava/util/HashMap;

    move-result-object p0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device platform:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--capability:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Taplus.ClipboardUtils"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3c

    .line 96
    const-string p1, "com.miui.contentextension"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    move v0, v2

    :cond_3c
    return v0

    .line 97
    :cond_3d
    invoke-static {}, Lcom/miui/contentextension/App;->isMiuiLiteRom()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 98
    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->hasContentExtensionServiceInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4c
    return v0
.end method

.method public static isShowPrivacyDialog(Landroid/content/Context;)Z
    .registers 5

    .line 233
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isDouyinPrivacyEnable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    .line 234
    invoke-static {p0}, Lcom/miui/contentextension/utils/Utilities;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 235
    const-string v2, "com.miui.contentextension"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 236
    const-string p0, "Taplus.ClipboardUtils"

    const-string v0, "guideUserOpenClipboardFunction return"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2d
    const v0, 0x7f100022

    .line 239
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/IntentUtils;->startPrivacyClipboardActivity(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_39
    return v1
.end method

.method public static supportMail(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 57
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "mailto:xxx"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public static supportTel(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 51
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "tel:xxx"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public static transferContent(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 63
    invoke-static {p0}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->dealUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public static transferType(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 80
    const-string p0, "LOC"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 82
    const-string p0, "URL"

    return-object p0

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 84
    const-string p0, "TEL"

    return-object p0

    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 86
    const-string p0, "MAIL"

    return-object p0

    .line 88
    :cond_18
    const-string p0, "UNKNOWN"

    return-object p0
.end method
