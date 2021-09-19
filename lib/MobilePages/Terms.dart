import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';


class MobileTerms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 50),
      child: html,
    );
  }

  Widget html = Html(
    data: """
       <div class="container">
              <div class="content-top">
                  <div class="main-width">
                      <h1>شروط الاستخدام</h1>
                      <div class="MobileTerms-items">
                          <div class="first-three">
                              <h2>قبول الشروط</h2>
                              <p>
                                  باستخدامك ھذا التطبيق، فإنك تقبل ھذه الشروط وأنك توافق على الالتزام بھا. و إذا كنت تستخدم التطبيق كموظف أو ممثل كیان قانوني آخر،
                                  فإنه بأستخدامك لھذا التطبيق تقبل ھذه الشروط بصفتك الشخصیة أو نیابة عن ھذا الكیان القانوني.
                              </p>
                             
                              <h2>الخدمة المقدمة </h2>
                              <p>
                                  یقوم تطبيق “"كار  SA "” بإدارة نشاط تجاري، كأعمال تسعير وبيع المنتجات، و تقدیم الخدمات المساندة والتوصيل . و یمكن من خلالھ تقدیم طلبات
                                  لمنتجات مختلفة. لذلك عند تقدیم الطلب تتم الموافقة من قبل المشتري على تفاصیل ھذه الاتفاقیة والتفاصیل المذكورة في تسعيرة المنتج. لا
                                  یعتبر أي طلب تم تقدیمة جاهزاً للتوصيل أو مؤكد حتى تأكيد العميل، عندما یقرر العمیل شراء منتج من التطبيق فإن العقد القانوني الناتج
                                  یكون بین "كار  SA " وبین العميل وھذا العقد یجب ان یحتوي على شروط وأحكام تحكم ھذا الاتفاق، في حالة توصيل المنتج بعد تأكيده من العميل،
                                  يقوم العميل باستلام فاتورة بيع تحوي تفاصيل المنتج الذي قد تم بيعه..
                              </p>
                          </div>
                          <h2>الدخول إلى التطبيق</h2>
                          <p>أنت مسئول عن اتخاذ جمیع الترتیبات اللازمة لتتمكن من الوصول إلى التطبيق كما مسئول عن :</p>
                          <ul>
                              <li>المحافظة على أي من كلمات السر التي لدیك لاستخدام ھذا التطبيق، ویجب أن لا تكشفھا إلى أي طرف ثالث.</li>
                              <li>
                                  أي استخدام یتم عن طریق اسم المستخدم الخاص بك أو كلمة السر أو بریدك الالكتروني لھذا التطبيق ( عدا الاستخدامات التي تتم من قبل
                                  مسؤولین تطبيقنا ).
                              </li>
                          </ul>
                          <p>كما یحق لنا:</p>
                          <ul>
                              <li>تعلیق الوصول إلى ھذا التطبيق، أو إلغاء الحسابات في أي وقت ولأي سبب حسب تقدیرنا، بما في ذلك أي أعمال للصیانة أو تطویر التطبيق.</li>
                              <li>من وقت لآخر، تقیید الوصول إلى بعض أجزاء من التطبيق أو التطبيق كامل، للمستخدمین الذین سجلوا معنا ( المستخدمین المسجلین ).</li>
                              <li>
                                  في حالة تم مخالفة أو شك المسئولين في ""كار  SA "" أن أي مستخدم خالف أي من ھذه الشروط، فلنا الحق فوراً ودون إشعار إنھاء استخدامھ لھذا
                                  التطبيق، أو استخدام جزء من التطبيق.
                              </li>
                          </ul>
                          <h2>الاستخدام غیر المشروع للتطبيق</h2>
                          <p>
                              لا یحق لك أن تستخدم التطبيق استخدام غیر قانوني أو غیر مصرح بھ ، أو إدخال أي فیروس أو غیرھا من البرامج الضارة أو التسبب في تعطیل
                              التطبيق ، أو محاولة الوصول غیر المصرح بھ إلى التطبيق أوالخادم الذي یتم تخزین التطبيق علیھ أو أي خادم أو جھاز كمبیوتر أو قاعدة بیانات
                              متصلة بالتطبيق.
                          </p>
                          <h2>الحمایة من الفیروسات</h2>
                          <p>
                              تطبيق ""كار  SA "" یقدم أعلى درجات الفحص و الاختبار و الحمایة و لكن لا یتحمل التطبيق أي مسؤولیة نتیجة لھجوم فیروسي أو غیرھا من المواد
                              الضارة من الناحیة التكنولوجیة أو أي خسارة أو انقطاع أو تلف لبیاناتك أو نظام الكمبیوتر الخاص بك و التي قد تحدث أثناء استخدامك لتطبيق.
                          </p>
                          <h2>إخلاء المسؤولیة</h2>
      
                          <ul>
                              <li>- نحن في ""كار  SA "" نبذل أقصى الجھود لضمان أن الأسعار المعروضة للعملاء هي أسعار منافسة ودقيقة في حالة التسعير من قبل مقدمي الخدمات والتجار. و لكن لا یمكن ضمان أن الأسعار هي الأرخص، كما لايمكن ضمان عدم تغير الأسعار بعد مرور فترة زمنية معينة حيث يحق لمقدم الخدمة او عارض السلعة عرض السلعة بسعر آخر بعد مرور فترة زمنية. وأي مستخدم یستخدم ھذه المعلومات الواردة تكون تحت مسئولیتھ الخاصة ، لذلك ننصح بقراءة المعلومات بشكل دقیق. كما لا یمكن أن نضمن أن التطبيق سوف یعمل بشكل مستمر أو بدون انقطاع أو أنھ خالي من الأخطاء.</li>
                              <li>- تقع مسئولية دقة بيانات السلع المعروضة في التطبيق بكاملها على مقدم السلعة او الخدمة والذي يقدم لك في النهاية خدمة تسعير وبيع قطع غيار السيارات </li>
                              <li>- لاتقبل "كار  SA " تحت أي ظرف من الظروف مسئولية تتعلق بجودة أو دقة بيانات الأسعار المقدمة من قبل مقدمي السلع وتجار قطع الغيار على التطبيق أو ماينشأ عن ذلك.</li>
                              <li>- "كار  SA " لاتقبل المسئولية عن أي أفعال أو تصرفات أو سلوك أو إهمال أو جميع ماسبق من جانب مقدمي السلع والخدمات وتجار قطع الغيار.</li>
                              <li>- إن اي شكاوى أو اعتراضات أو مطالبات قانونية ينبغي تقديمها على مقدمي السلع والخدمات والتاجر عارض السلعة.</li>
                          </ul>
                          
                          <h2>معلومات عنك وعن زیاراتك للتطبيق</h2>
                          <p>
                              قد نقوم بجمع ومعالجة معلومات عنك عند استخدام ھذا التطبيق وفقا لسیاسة الخصوصیة الخاصة بنا و باستخدامك لھذا التطبيق، فإنك توافق على ذلك.
                          </p>
                          <h1>شروط و أحكام الشراء عن طریق "كار  SA "</h1>
                          <h2>تقدیم طلب شراء السلع:</h2>
                          <ul>
                              <li>
                                  قد يتأخر تسليم السلعة للعميل لأكثر من 3 أيام وذلك بناءا على توفر القطعة لدى التاجر أو بسبب شركات الشحن ، نحن نتواصل مع العميل
                                  ونخبره مسبقاً.
                              </li>
                              <li>
                                  في "كار  SA " نحرص على أن يكون سعر الشراء هو نفس السعر المذكور عند تسعير الطلب من قبل التاجر للعميل ولكن في بعض الحالات قد يتغير السعر
                                  لعدة أسباب من قبل التاجر مثل وجود منتج بديل بمواصفات بديلة او من قبل العميل بتغيير مواصفات القطعة أو في حالة توفر السلعة لدى تاجر
                                  آخر بسعر مختلف وحينها سيقوم فريقنا بإخبار العميل بفارق السعر ولا يحق للعميل المطالبة بأي تعويضات في حال تغير السعر بعد تقديم طلب
                                  الشراء.
                              </li>
                              <li>
                                  جمیع أسعار الشراء لا تشمل رسوم التوصيل إن وجدت والتي سیتم إضافتھا إلى التكلفة الكلیة للطلب في الفاتورة النهائية التي يستلمها
                                  العميل.
                              </li>
                              <li>جمیع عملیات استرداد المبالغ تتم بشكل إلكتروني.</li>
                              <li>
                                  في حالات التسعير التلقائي هناك احتمالية ضئيلة أن لا تتوفر القطعة لدى التاجر المسعر لها وذلك لتأخره في تحديث بيانات مخزونه الخاص
                                  وقد نجد القطعة لدى تاجر اخر بسعر مختلف وسيتم اخطار العميل بالتغييرات خلال 24 ساعة من وقت إتمام الطلب ، في مثل هذه الحالة "كار  SA "
                                  والتجار غير ملزومين بإتمام عملية البيع.
                              </li>
                              <li>قد يضطر التطبيق لرفض أو إلغاء أي عملیة شراء لأى سبب كان لأي عميل في اي وقت وبدون إبداء السبب سواء للعمیل أو أي طرف آخر.</li>
                              <li>
                                  "كار  SA " تخلي مسؤوليتها من اي عملية بيع او اتفاق بين التاجر و العميل في حالة تمت عملية الدفع خارج التطبيق أو التطبيق، و "كار  SA " غير
                                  مسؤولة عن اي حوالات تنفذ لغير حساباتها الرسمية المذكورة في التطبيق و التطبيق.
                              </li>
                              <li>
                                  یرجى ملاحظة أننا قد نحتفظ بالمعلومات الشخصیة الخاصة بك ، بطریقة آمنة وذلك لتسهيل مهمتنا في الطلبات اللاحقة وسوف نستخدم المعلومات
                                  الخاصة بك فقط وفقا لسیاسة الخصوصیة.
                              </li>
                              <li>
                                  في حال طلب سلعة غیر متوفرة محلیاً ، سوف تكون مسئولاً عن الامتثال لجميع القوانين واللوائح المعمول بھا في المملكة العربیة السعودیة
                                  والتي تنظم الاستیراد من الخارج و أنت ملتزم بدفع أي رسوم اضافیة أو ضرائب تتعلق باستیراد السلعة.
                              </li>
                          </ul>
                          <h2>الشحن والمخاطر:</h2>
                          <ul>
                              <li>
                                  یجب على العميل موافاة مسئول التوصيل الخاص ب"كار  SA " بـ العنوان بشكل صحیح و كامل و لایتحمل ""كار  SA "" أي أخطاء في العنوان المسجل في
                                  سجلاتنا الصوتية أو الرقمية.
                              </li>
                              <li>
                                  سيتم بذل كل جھد ممكن لشحن الطلب وتوصيله حسب المواعید التي تم الإتفاق عليها صوتياً أو كتابياً في مراسلاتنا مع العميل أو خلال الفترة
                                  الزمنیة المحددة على التطبيق ولكن لا یتحمل التطبيق مسئولیة تأخیر تسلیم اي طلب في الظروف الخارجة عن إرادتنا.
                              </li>
                              <li>
                                  تنتقل ملكیة المنتج للمشتري بمجرد شحن الطلب إلى العنوان المسجل في الطلب، و حتى ھذا الوقت تظل ملكیة المنتج ل"كار  SA " و یحق للمشتري
                                  المطالبة بمبلغ الطلب حسب سیاسة الالغاء والاسترجاع و الاستبدال.
                              </li>
                              <li>
                                  ستنتقل المسؤولیة عن مخاطر الخسارة أو الأضرار التي لحقت بالطلب بمجرد أن یتم تسلیمھا الى المشتري و لا یحق لھ استرجاع قیمة الطلب إلا
                                  حسب شروط الالغاء و الاسترجاع و الاستبدال.
                              </li>
                              <li>
                                  يتحمل العميل مبلغ الشحن و هو متغير حسب نوع القطعة، نعطي في "كار  SA " كامل الحرية لعملائنا في اختيار مزود الشحن و سيتم اعلام عملائنا
                                  بمبلغ الشحن المتوقع قبل ارسال الشحنة.
                              </li>
                          </ul>
      
                          <h2>حق الإلغاء و الاسترجاع والاستبدال</h2>
                          <h3>إلغاء الطلبات قبل شحن المنتجات</h3>
                          <ul>
                              <li>في حالة عدم التزام أي من المتاجر بتحضير القطعة ، أو إختلاف الأسعار، فالتطبيق ""كار  SA "" ملزم بإخبار العميل خلال 24 ساعة عمل من وقت دفع العميل لقيمة الطلب.</li>
                              <li>"كار  SA " غير ملزم بأي تعويضات للمشتري باستثناء قيمة الطلب المدفوع.</li>
                              <li>بعض القطع تحتاج بأن تطلب من الوكيل أو من الخارج وفي هذه الحالة حين موافقة العميل على الطلب لا يحق له إلغاء الطلب وفي حالة الإلغاء قد تخصم منه بعض الرسوم الإدارية.</li>
                              <li>في حالات اختلاف الاسعار يلتزم المشتري بسداد الفارق للبدء في إجراءات التحضير والشحن.</li>
                              <li>قسم المستعمل: رسوم خاصة بالفك والتحضير للقطع المستعملة بنسبة لا تقل عن 15% من إجمالي قيمة القطع أو خمسين ريال كحد أدنى.</li>
                              <li>قسم الجديد: رسوم خاصة للقطع التي تطلب من الوكيل أو من الخارج بنسبة لا تقل عن 5% من إجمالي قيمة القطع أو خمسين ريال كحد أدنى.</li>
                          </ul>
                          <h3>الاستبدال والاسترجاع بعد شحن المنتجات</h3>
                          <ul>
                              <li>في حال كانت القطعة المرسلة للعميل صحيحة بحيث كانت مطابقة لنفس مسمى القطعة المرسل من قبل العميل ومطابقة للرقم الهيكل المرسل مع الطلب أو قام العميل باختيارها من قائمة القطع المعروضة فلا يحق له طلب استبدال أو استرجاع للقطعة.</li>
                              <li>في حال قام المتجر بإرسال قطعة غير مطابقة لمواصفات طلب العميل أو قام بإرسال قطعة غير قابلة للإستخدام فيحق للعميل طلب استبدال أو استرجاع للقطعة خلال فترة الضمان الموضحة مع الطلب.</li>
                              <li>"كار  SA " غير ملزم بأي تعويضات للمشتري باستثناء قيمة الطلب المدفوع.</li>
                              <li>لا يتحمل المتجر أي رسوم إضافية جراء الخطأ بتحضير القطعة ويتحمل فقط رسوم الفك والتحضير لنفس القطعة المحضرة.</li>
                              <li>في حالة تم التأخر بإرسال القطعة من قبل العميل لأكثر من 24 ساعة من وقت إبلاغ مركز خدمة العملاء يعتبر طلب الإرجاع أو الاستبدال ملغي.</li>
                              <li>يشترط لما سبق وصول القطع المرتجعة في حالتها الأصلية واستلامها من قبل المتجر للبدء بإجراءات استبدال القطعة أو إجراءات إرجاع المبالغ المالية المتبقية للعميل وفي حال اختلاف القطعة المرتجعة عن القطعة الأصلية المرسلة للعميل فيعتبر الطلب ملغي.</li>
                              <li>يشترط لما سبق بأن يتم طلب الاستبدال أو الإرجاع خلال فترة الضمان الموضحة مع كل قطعة مباعة وفي حال تم الطلب بعد انتهاء فترة الضمان فيعتبر الطلب ملغي وغير مقبول.</li>
                              <li>في حال عدم وجود فترة ضمان موضحة مع الطلب فيعتبر ضمان القطعة 48 ساعة من وقت وصول القطعة لعنوان شحن العميل وأي طلب استبدال أو استرجاع خلال هذه المدة يعتبر ملغي وغير مقبول.</li>
                          </ul>
      
                          <h2>شروط وأحكام بيع المكائن وناقل الحركة (قيرات - جيربكس) لدى "كار  SA ":</h2>
                          <ul>
                              <li>نوفر لعملائنا ضمان بحسب المدة المحددة من قبل التاجر ويتم توضيح ذلك بالفاتورة أو بصفحة الطلب الخاصة بالعميل.</li>
                              <li>السعر لا يشمل استلام الرجيع من العميل (المكينة أو القير القديم) بحيث يجب دفع مبلغ تأمين مقدما لحين استلام المكينة أو القير المرتجع.</li>
                              <li>السعر المعروض غير شامل للتركيب.</li>
                              <li>يشمل الضمان نقص الزيت، خروج الدخان، التهريب، ارتفاع الحرارة حيث يجب على العميل عند حدوث أحد هذه المشاكل، الرجوع والإتصال بنا مباشرة قبل حدوث أي كسر في المكينة لسوء الملاحظة أو الإهمال في الرجوع إلينا.</li>
                              <li>لايشمل الضمان الكسر الذي قد يحدث بسبب إهمال مشاكل المكينة، نحن دوماً مسؤولون عن المشكلة فور اعلامنا بها قبل الكسر.</li>
                              <li>يشترط لما سبق بأن تتطابق مع الشروط المذكورة في الاستبدال والاسترجاع بعد شحن المنتجات.</li>
                              <li></li>
                              <li></li>
                          </ul>
                          <h2>طلبات خدمة التسعير</h2>
                          <ul>
                              <li>في حال عدم توفر القطعة المطلوب تسعيرها فيحق للعميل إما الاحتفاظ بالمبلغ برصيده في تطبيق "كار  SA " أو المطالبة بإعادته لحسابه البنكي خلال مدة لا تتجاوز 3 أشهر من تاريخ دفع المبلغ.</li>
                              <li>المبالغ المدفوعة للطلبات الغير مسعرة تنتهي صلاحيتها خلال 3 أشهر من تاريخ دفع العميل للمبلغ ولا يحق للعميل المطالبة بها بعد هذه الفترة.</li>
                              <li>في حال تم تسعير الطلب للعميل يحق للعميل الاعتراض على السعر خلال مدة لا تتجاوز 7 أيام عمل والمطالبة بإعادة المبلغ لحسابه.</li>
                              <li>في حال تم تسعير الطلب للعميل ولم يقم العميل بالاعتراض على السعر المرسل له خلال 7 أيام عمل ف "كار  SA " تقوم بالاحتفاظ بالمبلغ برصيد العميل لمدة 45 يوم على أن يتم الإستفادة منها فقط بطلبات الشراء من داخل التطبيق أو التطبيق.</li>
                              <li>المبالغ المدفوعة للطلبات المسعرة تنتهي صلاحيتها خلال 45 يوم من تاريخ دفع العميل للمبلغ ولا يحق للعميل المطالبة بها بعد هذه الفترة.</li>
                          </ul>
                          <h2>مدة إيداع المبالغ الخاصة بطلبات الإرجاع</h2>
                          <ul>
                              <li>سيتم ارجاع المبالغ إلكترونيا بعد استلام الشحنات والقطع من العميل بحالة سليمة خلال مدة ما بين ثلاثة إلى خمسة أيام عمل كحد أقصى.</li>
                          </ul>
                          <h2>مدة الارجاعات</h2>
                          <ul>
                              <li>مدى / البطاقات الائتمانية: يتم رفع طلب الإرجاع للبنك على نفس البطاقة المستخدمة وقد يتطلب الأمر من 7 إلى 21 يوم عمل لتظهر القيمة في كشف حساب البنك الخاص بالعميل من تاريخ إعادته وذلك حسب الإجراءات البنكية.</li>
                          </ul>
                          <h2>المطالبات والنزاعات</h2>
                          <ul>
                              <li>في حال نشوء أية مطالبات أو نزاعات بسبب استخدام تطبيق ""كار  SA "" فإن الانظمة و المحاكم و اللجان داخل المملكة العربیة السعودیة ھي المعمول بھا لفض ھذا المطالبات أو النزاعات.</li>
                          </ul>
                      </div>
                  </div>
                  <div class="side-image-div-MobileTerms">
              </div>
          </div>
      </div>
      """,
    //Optional parameters:
  );
}
