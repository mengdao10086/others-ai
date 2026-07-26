.class public Lcom/miui/contentextension/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/Utils$Listener;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smshowPrivacyClipboardRevokeTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
    .registers 5

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/contentextension/utils/Utils;->showPrivacyClipboardRevokeTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static getPrivacyUrl(Z)Ljava/lang/String;
    .registers 4

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_15

    .line 46
    const-string p0, "https://privacy.mi.com/taplus-share/"

    goto :goto_17

    :cond_15
    const-string p0, "https://privacy.mi.com/taplus/"

    .line 47
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrivacyUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.Utils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getUserAgreement()Ljava/lang/String;
    .registers 4

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://terms.miui.com/doc/taplus/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".html"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserAgreement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.Utils"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static showPrivacyClipboardDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
    .registers 14

    .line 149
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100219

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f10021a

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f10021b

    .line 156
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/contentextension/utils/Utils$6;

    invoke-direct {v1, p5}, Lcom/miui/contentextension/utils/Utils$6;-><init>(Lcom/miui/contentextension/utils/Utils$Listener;)V

    const v2, 0x7f100024

    .line 159
    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v7, Lcom/miui/contentextension/utils/Utils$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/miui/contentextension/utils/Utils$5;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V

    const p0, 0x7f10002a

    .line 172
    invoke-virtual {p1, p0, v7}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 183
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    .line 184
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private static showPrivacyClipboardRevokeTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
    .registers 7

    .line 188
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100218

    .line 189
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100217

    filled-new-array {p1, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 190
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 191
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/miui/contentextension/utils/Utils$8;

    invoke-direct {p1, p4}, Lcom/miui/contentextension/utils/Utils$8;-><init>(Lcom/miui/contentextension/utils/Utils$Listener;)V

    const p3, 0x7f100024

    .line 192
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/miui/contentextension/utils/Utils$7;

    invoke-direct {p1, p4}, Lcom/miui/contentextension/utils/Utils$7;-><init>(Lcom/miui/contentextension/utils/Utils$Listener;)V

    const p3, 0x7f1000ff

    .line 204
    invoke-virtual {p0, p3, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 218
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 220
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    .line 221
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static showPrivacyRevokeTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
    .registers 8

    .line 106
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100218

    .line 107
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f100217

    filled-new-array {p1, p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 108
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p3, 0x0

    .line 109
    invoke-virtual {p1, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/miui/contentextension/utils/Utils$4;

    invoke-direct {p3, p0, p2, p4}, Lcom/miui/contentextension/utils/Utils$4;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V

    const p0, 0x7f100024

    .line 110
    invoke-virtual {p1, p0, p3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/miui/contentextension/utils/Utils$3;

    invoke-direct {p1, p4}, Lcom/miui/contentextension/utils/Utils$3;-><init>(Lcom/miui/contentextension/utils/Utils$Listener;)V

    const p2, 0x7f1000ff

    .line 126
    invoke-virtual {p0, p2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 139
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    .line 140
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static showPrivacyUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
    .registers 14

    .line 64
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100219

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f10021a

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f10021b

    .line 71
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/contentextension/utils/Utils$2;

    invoke-direct {v1, p0, p2, p5}, Lcom/miui/contentextension/utils/Utils$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V

    const v2, 0x7f100024

    .line 74
    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v7, Lcom/miui/contentextension/utils/Utils$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/miui/contentextension/utils/Utils$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V

    const p0, 0x7f10002a

    .line 90
    invoke-virtual {p1, p0, v7}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    .line 101
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    .line 102
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
