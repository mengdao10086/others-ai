.class public Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;
.super Lcom/miui/contentextension/BaseActivity;
.source "BlacklistSettingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lmiuix/view/SearchActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$WhitelistComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlacklistSettingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlacklistSettingActivity.kt\ncom/miui/contentextension/setting/whitelist/BlacklistSettingActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,402:1\n1863#2,2:403\n1863#2,2:405\n1863#2,2:407\n1863#2,2:409\n*S KotlinDebug\n*F\n+ 1 BlacklistSettingActivity.kt\ncom/miui/contentextension/setting/whitelist/BlacklistSettingActivity\n*L\n189#1:403,2\n227#1:405,2\n267#1:407,2\n358#1:409,2\n*E\n"
.end annotation


# instance fields
.field private final allList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;",
            ">;"
        }
    .end annotation
.end field

.field private appInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

.field private binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

.field private blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

.field private final blacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;",
            ">;"
        }
    .end annotation
.end field

.field private final checkChangeListener:Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;

.field private mListView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mSearchActionMode:Lmiuix/view/SearchActionMode;

.field private mSearchView:Landroid/view/View;

.field private searchInputView:Landroid/widget/TextView;

.field private final searchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;",
            ">;"
        }
    .end annotation
.end field

.field private whitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AShMQ_m_jkGDe3-4vXMV4wR-N3k(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;IZ)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->checkChangeListener$lambda$7(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KM7_bqTopBn6B28RLIHExoHQy8c(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->supportNavBar$lambda$0(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_OkQUPJwCRmcESN_HyN7CMzgITs(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->saveWhiteList$lambda$4(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/miui/contentextension/BaseActivity;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->whitelist:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->searchList:Ljava/util/List;

    .line 279
    new-instance v0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$$ExternalSyntheticLambda2;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->checkChangeListener:Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;

    return-void
.end method

.method public static final synthetic access$getAllList$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Ljava/util/List;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getApps(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Ljava/util/List;
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->getApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    return-object p0
.end method

.method public static final synthetic access$getBlackListAdapter$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBlacklist$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Ljava/util/List;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLabelPy(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/lang/String;)Lcom/miui/contentextension/setting/whitelist/model/PYInfo;
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->getLabelPy(Ljava/lang/String;)Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initSearchPrompt(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->initSearchPrompt()V

    return-void
.end method

.method public static final synthetic access$mergeResult(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mergeResult(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setWhitelist$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->whitelist:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$updateUI(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->updateUI(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final checkChangeListener$lambda$7(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;IZ)V
    .registers 8

    .line 280
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    const/4 v1, 0x0

    const-string v2, "blackListAdapter"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->getPositionData(I)Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 282
    invoke-virtual {p1, p2}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->setChecked(Z)V

    if-eqz p2, :cond_2d

    .line 284
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->whitelist:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 286
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 289
    :cond_2d
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->whitelist:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 290
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->whitelist:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getPackageName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_47
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 294
    :cond_4c
    :goto_4c
    iget-object p0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    if-nez p0, :cond_54

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_55

    :cond_54
    move-object v1, p0

    :goto_55
    invoke-virtual {v1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->updateGroupName(Z)V

    :cond_58
    return-void
.end method

.method private final exitSearchMode()V
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mSearchActionMode:Lmiuix/view/SearchActionMode;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mSearchActionMode:Lmiuix/view/SearchActionMode;

    :cond_7
    return-void
.end method

.method private final getApps()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    new-instance v1, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$WhitelistComparator;

    invoke-direct {v1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$WhitelistComparator;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    .line 1863
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    .line 228
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 230
    :cond_25
    new-instance v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;

    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;-><init>(ZI)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    new-instance v3, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;

    iget-object v4, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v3, v2, v4}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;-><init>(ZI)V

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method private final getLabelPy(Ljava/lang/String;)Lcom/miui/contentextension/setting/whitelist/model/PYInfo;
    .registers 6

    .line 186
    new-instance v0, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    invoke-direct {v0}, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;-><init>()V

    if-eqz p1, :cond_49

    .line 188
    invoke-static {p0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->getInstance(Landroid/content/Context;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 189
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1863
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    if-eqz v1, :cond_1a

    .line 190
    iget-object v2, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    const-string v3, "target"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 191
    iget-object v2, v0, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;->py:Ljava/lang/StringBuffer;

    iget-object v3, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v2, v0, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;->pyFirst:Ljava/lang/StringBuffer;

    iget-object v1, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1a

    :cond_49
    return-object v0
.end method

.method private final getPackageLists(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1863
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    .line 268
    invoke-virtual {v1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method private final initSearchPrompt()V
    .registers 5

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0e000c

    .line 328
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getQuantityString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->searchInputView:Landroid/widget/TextView;

    if-nez v1, :cond_2e

    const-string v1, "searchInputView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final isSearchMode()Z
    .registers 2

    .line 371
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mSearchActionMode:Lmiuix/view/SearchActionMode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private final mergeResult(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 166
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v8, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v8, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1b

    return-object p1

    :cond_1b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final resetSearchList()V
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->searchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 351
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->searchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_d
    return-void
.end method

.method private final saveWhiteList()V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->getPackageLists(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-static {p0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->updateBlacklistConfig(Ljava/util/List;)V

    .line 258
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->runInBackgroud(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final saveWhiteList$lambda$4(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;)V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->whitelist:Ljava/util/List;

    const-string v1, "whitelistLocalShow"

    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/utils/FileUtils;->writeListToFile(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 260
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/FileUtils;->writeBlacklistFromUser(Landroid/content/Context;Ljava/util/List;)V

    .line 261
    invoke-static {p0, p1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->saveBlacklistToSettingProviderIfNeed(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private final setSearchViewPadding(I)V
    .registers 6

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 159
    :goto_10
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mSearchView:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "mSearchView"

    if-nez v0, :cond_1b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 162
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mSearchView:Landroid/view/View;

    if-nez p1, :cond_34

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_35

    :cond_34
    move-object v1, p1

    :goto_35
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final startSearchMode(Lmiuix/view/SearchActionMode$Callback;)V
    .registers 3

    .line 340
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type miuix.view.SearchActionMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lmiuix/view/SearchActionMode;

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mSearchActionMode:Lmiuix/view/SearchActionMode;

    return-void
.end method

.method private final supportNavBar()V
    .registers 3

    .line 115
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez v0, :cond_11

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_11
    iget-object v0, v0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$$ExternalSyntheticLambda0;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static final supportNavBar$lambda$0(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p2

    const-string v0, "getInsets(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget v0, p2, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v0, :cond_4d

    .line 122
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_2b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2b
    iget-object v0, v0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 123
    iget-object p0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez p0, :cond_39

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3a

    :cond_39
    move-object v1, p0

    :goto_3a
    iget-object p0, v1, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    .line 127
    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    .line 123
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 130
    :cond_4d
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private final trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(C)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 209
    :cond_1b
    :goto_1b
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method private final updateData()V
    .registers 8

    .line 374
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 375
    :cond_9
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->isSearchMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->searchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 376
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mSearchActionMode:Lmiuix/view/SearchActionMode;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lmiuix/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    move v0, v1

    .line 377
    :goto_32
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->isSearchMode()Z

    move-result v2

    const-string v3, "blackListAdapter"

    const/16 v4, 0x8

    const-string v5, "binding"

    const/4 v6, 0x0

    if-eqz v2, :cond_79

    if-eqz v0, :cond_42

    goto :goto_79

    .line 384
    :cond_42
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->searchList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 385
    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    if-nez v2, :cond_50

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_50
    iget-object v3, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->searchList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->updateData(Ljava/util/List;)V

    .line 386
    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez v2, :cond_5d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_5d
    iget-object v2, v2, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->emptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_63

    move v3, v1

    goto :goto_64

    :cond_63
    move v3, v4

    :goto_64
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez v2, :cond_6f

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_70

    :cond_6f
    move-object v6, v2

    :goto_70
    iget-object v2, v6, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_75

    move v1, v4

    :cond_75
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_b4

    .line 378
    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 379
    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    if-nez v2, :cond_87

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_87
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->updateData(Ljava/util/List;)V

    .line 380
    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez v2, :cond_96

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_96
    iget-object v2, v2, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->emptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_9c

    move v3, v1

    goto :goto_9d

    :cond_9c
    move v3, v4

    :goto_9d
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez v2, :cond_a8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a9

    :cond_a8
    move-object v6, v2

    :goto_a9
    iget-object v2, v6, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_ae

    move v1, v4

    :cond_ae
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 382
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->initSearchPrompt()V

    :goto_b4
    return-void
.end method

.method private final updateSearchResult(Ljava/lang/String;)V
    .registers 12

    .line 356
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->resetSearchList()V

    .line 357
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;

    .line 1863
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    .line 359
    invoke-virtual {v9}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_e9

    .line 361
    invoke-virtual {v9}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPyInfo()Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "toString(...)"

    if-eqz v2, :cond_74

    invoke-virtual {v9}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPyInfo()Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;->py:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, v5, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 362
    :cond_74
    invoke-virtual {v9}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPyInfo()Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object v2

    if-eqz v2, :cond_9b

    invoke-virtual {v9}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPyInfo()Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;->py:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 363
    :cond_9b
    invoke-virtual {v9}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPyInfo()Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object v2

    if-eqz v2, :cond_c2

    invoke-virtual {v9}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPyInfo()Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;->pyFirst:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, v5, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 364
    :cond_c2
    invoke-virtual {v9}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPyInfo()Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v9}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPyInfo()Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;->pyFirst:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 365
    :cond_e9
    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->searchList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 368
    :cond_f0
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->updateData()V

    return-void
.end method

.method private final updateUI(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 214
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_15

    return-object p1

    :cond_15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 396
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->updateSearchResult(Ljava/lang/String;)V

    goto :goto_21

    .line 398
    :cond_1b
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->resetSearchList()V

    .line 399
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->updateData()V

    :goto_21
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    const-string p2, "charSequence"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 0
    const-string v0, "actionMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menuItem"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez v0, :cond_f

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    iget-object v0, v0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->searchView:Landroid/view/View;

    if-ne p1, v0, :cond_16

    .line 345
    invoke-direct {p0, p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->startSearchMode(Lmiuix/view/SearchActionMode$Callback;)V

    :cond_16
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 66
    invoke-super {p0, p1}, Lcom/miui/contentextension/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    .line 69
    const-string v0, "binding"

    const/4 v1, 0x0

    if-nez p1, :cond_1a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1a
    invoke-virtual {p1}, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    const p1, 0x7f1001f8

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 71
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 73
    invoke-static {p0}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isSplitModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {p0}, Lcom/miui/contentextension/utils/MiuiPadUtils;->isTabletSpitModel(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 75
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 79
    :cond_40
    new-instance p1, Lcom/miui/contentextension/utils/AppInfoCaches;

    invoke-direct {p1, p0}, Lcom/miui/contentextension/utils/AppInfoCaches;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->appInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

    .line 80
    invoke-virtual {p1}, Lcom/miui/contentextension/utils/AppInfoCaches;->onCreate()V

    .line 82
    new-instance p1, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->checkChangeListener:Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;

    iget-object v3, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->appInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

    if-nez v3, :cond_58

    const-string v3, "appInfoCaches"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_58
    invoke-direct {p1, v2, v3}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;-><init>(Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;Lcom/miui/contentextension/utils/AppInfoCaches;)V

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    .line 83
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez p1, :cond_65

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_65
    iget-object p1, p1, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 84
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez p1, :cond_71

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_71
    iget-object p1, p1, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    if-nez v2, :cond_7d

    const-string v2, "blackListAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_7d
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez p1, :cond_88

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_88
    iget-object p1, p1, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v2, Lmiuix/recyclerview/card/CardItemDecoration;

    invoke-direct {v2, p0}, Lmiuix/recyclerview/card/CardItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 86
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez p1, :cond_9a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_9a
    iget-object p1, p1, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->searchView:Landroid/view/View;

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mSearchView:Landroid/view/View;

    .line 87
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez p1, :cond_a6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_a6
    iget-object p1, p1, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->searchView:Landroid/view/View;

    const v2, 0x1020009

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->searchInputView:Landroid/widget/TextView;

    .line 88
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez p1, :cond_c0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_c0
    iget-object p1, p1, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->searchView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlacklistIfNeed(Landroid/content/Context;)V

    .line 91
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;

    invoke-direct {v0, p0, v1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenCreated(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 106
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/contentextension/App;->onActivityCreated(Landroid/app/Activity;)V

    .line 107
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->supportNavBar()V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    check-cast p1, Lmiuix/view/SearchActionMode;

    .line 305
    iget-object p2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p2, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_17
    iget-object p2, p2, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->searchView:Landroid/view/View;

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 306
    iget-object p2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    if-nez p2, :cond_24

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_25

    :cond_24
    move-object v0, p2

    :goto_25
    iget-object p2, v0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 307
    invoke-interface {p1}, Lmiuix/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .registers 2

    .line 274
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 275
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->appInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

    if-nez v0, :cond_d

    const-string v0, "appInfoCaches"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_d
    invoke-virtual {v0}, Lcom/miui/contentextension/utils/AppInfoCaches;->onDestroy()V

    .line 276
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/contentextension/App;->onActivityDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    const-string v0, "actionMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    check-cast p1, Lmiuix/view/SearchActionMode;

    .line 321
    invoke-interface {p1}, Lmiuix/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 322
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->exitSearchMode()V

    .line 323
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->updateData()V

    .line 324
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->resetSearchList()V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 6

    .line 135
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    .line 137
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const-string v0, "mListView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    const-string v2, "getItemDecorationAt(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    instance-of v2, v0, Lmiuix/recyclerview/card/CardItemDecoration;

    if-eqz v2, :cond_4f

    int-to-float p1, p1

    .line 140
    sget v2, Lmiuix/theme/token/ContainerToken;->PADDING_BASE_DP:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    add-float/2addr p1, v2

    float-to-int p1, p1

    .line 143
    check-cast v0, Lmiuix/recyclerview/card/CardItemDecoration;

    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/CardItemDecoration;->setCardMarginStart(I)V

    .line 144
    invoke-virtual {v0, p1}, Lmiuix/recyclerview/card/CardItemDecoration;->setCardMarginEnd(I)V

    .line 147
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    const-string v2, "blackListAdapter"

    if-nez v0, :cond_40

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 148
    :cond_40
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    if-nez v0, :cond_48

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_49

    :cond_48
    move-object v1, v0

    :goto_49
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 151
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->setSearchViewPadding(I)V

    :cond_4f
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 0
    const-string v0, "actionMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menu"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStop()V
    .registers 5

    .line 248
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 249
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->saveWhiteList()V

    .line 250
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 251
    iput v1, v0, Landroid/os/Message;->what:I

    .line 252
    invoke-static {}, Lcom/miui/contentextension/App;->getHandler()Lcom/miui/contentextension/setting/whitelist/utils/StopSelfHandler;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    const-string p2, "charSequence"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
