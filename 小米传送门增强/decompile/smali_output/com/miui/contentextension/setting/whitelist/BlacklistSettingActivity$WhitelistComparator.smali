.class final Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$WhitelistComparator;
.super Ljava/lang/Object;
.source "BlacklistSettingActivity.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WhitelistComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;)I
    .registers 4

    const-string v0, "o1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->isChecked()Z

    move-result p1

    .line 238
    invoke-virtual {p2}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->isChecked()Z

    move-result p2

    if-ne p1, p2, :cond_16

    const/4 p1, 0x0

    goto :goto_1b

    :cond_16
    if-eqz p1, :cond_1a

    const/4 p1, -0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x1

    :goto_1b
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 235
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    check-cast p2, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$WhitelistComparator;->compare(Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;)I

    move-result p1

    return p1
.end method
