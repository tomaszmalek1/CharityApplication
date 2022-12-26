// document.addEventListener("DOMContentLoaded", function () {
//
//     /**
//      * Form Select
//      */
//     class FormSelect {
//         constructor($el) {
//             this.$el = $el;
//             this.options = [...$el.children];
//             this.init();
//         }
//
//         init() {
//             this.createElements();
//             this.addEvents();
//             this.$el.parentElement.removeChild(this.$el);
//         }
//
//         createElements() {
//             // Input for value
//             this.valueInput = document.createElement("input");
//             this.valueInput.type = "text";
//             this.valueInput.name = this.$el.name;
//
//             // Dropdown container
//             this.dropdown = document.createElement("div");
//             this.dropdown.classList.add("dropdown");
//
//             // List container
//             this.ul = document.createElement("ul");
//
//             // All list options
//             this.options.forEach((el, i) => {
//                 const li = document.createElement("li");
//                 li.dataset.value = el.value;
//                 li.innerText = el.innerText;
//
//                 if (i === 0) {
//                     // First clickable option
//                     this.current = document.createElement("div");
//                     this.current.innerText = el.innerText;
//                     this.dropdown.appendChild(this.current);
//                     this.valueInput.value = el.value;
//                     li.classList.add("selected");
//                 }
//
//                 this.ul.appendChild(li);
//             });
//
//             this.dropdown.appendChild(this.ul);
//             this.dropdown.appendChild(this.valueInput);
//             this.$el.parentElement.appendChild(this.dropdown);
//         }
//
//         addEvents() {
//             this.dropdown.addEventListener("click", e => {
//                 const target = e.target;
//                 this.dropdown.classList.toggle("selecting");
//
//                 // Save new value only when clicked on li
//                 if (target.tagName === "LI") {
//                     this.valueInput.value = target.dataset.value;
//                     this.current.innerText = target.innerText;
//                 }
//             });
//         }
//     }
//
//     document.querySelectorAll(".form-group--dropdown select").forEach(el => {
//         new FormSelect(el);
//     });
//
//     /**
//      * Hide elements when clicked on document
//      */
//     document.addEventListener("click", function (e) {
//         const target = e.target;
//         const tagName = target.tagName;
//
//         if (target.classList.contains("dropdown")) return false;
//
//         if (tagName === "LI" && target.parentElement.parentElement.classList.contains("dropdown")) {
//             return false;
//         }
//
//         if (tagName === "DIV" && target.parentElement.classList.contains("dropdown")) {
//             return false;
//         }
//
//         document.querySelectorAll(".form-group--dropdown .dropdown").forEach(el => {
//             el.classList.remove("selecting");
//         });
//     });
//
//     /**
//      * Switching between form steps
//      */
//     class FormSteps {
//         constructor(form) {
//             this.$form = form;
//             this.$next = form.querySelectorAll(".next-step");
//             this.$prev = form.querySelectorAll(".prev-step");
//             this.$step = form.querySelector(".form--steps-counter span");
//             this.currentStep = 1;
//
//             this.$stepInstructions = form.querySelectorAll(".form--steps-instructions p");
//             const $stepForms = form.querySelectorAll("form > div");
//             this.slides = [...this.$stepInstructions, ...$stepForms];
//
//             this.init();
//         }
//
//         /**
//          * Init all methods
//          */
//         init() {
//             this.events();
//             this.updateForm();
//         }
//
//         /**
//          * All events that are happening in form
//          */
//         events() {
//             // Next step
//             this.$next.forEach(btn => {
//                 btn.addEventListener("click", e => {
//                     e.preventDefault();
//                     // const checkbox = document.querySelector('input[type="checkbox"]');
//                     // const checkbox = document.querySelectorAll('form:checkbox');
//                     this.currentStep++;
//                     this.updateForm();
//                 });
//             });
//
//             // Previous step
//             this.$prev.forEach(btn => {
//                 btn.addEventListener("click", e => {
//                     e.preventDefault();
//                     this.currentStep--;
//                     this.updateForm();
//                 });
//             });
//
//             // Form submit
//             this.$form.querySelector("form").addEventListener("submit", e => this.submit(e));
//         }
//
//         /**
//          * Update form front-end
//          * Show next or previous section etc.
//          */
//         updateForm() {
//             this.$step.innerText = this.currentStep;
//             //-------------------------------------------------
//
//             // TODO: Validation
//             // function checkboxTest() {
//             //     const checkbox = document.querySelector("form .checkbox")
//             //     if (checkbox.checked == false) {
//             //         alert("Dupa")
//             //     }
//             // }
//
//
//             //--------------------------------------------------
//
//             this.slides.forEach(slide => {
//                 slide.classList.remove("active");
//
//                 if (slide.dataset.step == this.currentStep) {
//                     slide.classList.add("active");
//                 }
//             });
//
//             this.$stepInstructions[0].parentElement.parentElement.hidden = this.currentStep >= 5;
//             this.$step.parentElement.hidden = this.currentStep >= 5;
//
//             // TODO: get data from inputs and show them in summary
//         }
//
//     }
//
//     const form = document.querySelector(".form--steps");
//     if (form !== null) {
//         new FormSteps(form);
//     }
// });


document.addEventListener("DOMContentLoaded", function () {

    /**
     * Data tables
     */
    $(document).ready(function () {
        $('#table_id').DataTable();
    });

    /**
     * styling of Spring Form checkboxes
     */
    $('.checkboxMargin').unbind('click').bind('click', function () {
        if ($(this).hasClass('active')) {
            $(this).css('background-color', 'white');
            $(this).removeClass('active');
        } else {
            $(this).addClass('active');
            $(this).css('background-color', '#f9c910');
        }
    });


    $('.summaryBtn').click(function () {

        var thingsJoined = "";
        $('input[type=checkbox]:checked').each(function () {
            thingsJoined += ($(this).attr('class').replace('things ', '')) + "<br>";
        })

        $('#summaryThings').html(thingsJoined);

        $('#summaryQuantity').text($('.quantity').val());

        var inst = $('input[type=radio]:checked').attr('class').replace('institution ', '');
        $('#summaryInstitution').text(inst);
        //
        $('#summaryStreet').text($('.street').val());
        //
        $('#summaryCity').text($('.city').val());
        //
        $('#summaryZipcode').text($('.zipCode').val());
        //
        $('#summaryPhoneNumber').text($('.phoneNumber').val());
        //
        $('#summaryPickupDate').text($('.pickupdate').val());
        //
        $('#summaryPickupTime').text($('.pickuptime').val());
        //
        $('#summaryPickupComment').text($('.pickupcomment').val());
        //

    });

    $(".quantity").attr({
        "type": "number",
    });

    /**
     * Form Select
     */
    class FormSelect {
        constructor($el) {
            this.$el = $el;
            this.options = [...$el.children];
            this.init();
        }

        init() {
            this.createElements();
            this.addEvents();
            this.$el.parentElement.removeChild(this.$el);
        }

        createElements() {
            // Input for value
            this.valueInput = document.createElement("input");
            this.valueInput.type = "text";
            this.valueInput.name = this.$el.name;

            // Dropdown container
            this.dropdown = document.createElement("div");
            this.dropdown.classList.add("dropdown");

            // List container
            this.ul = document.createElement("ul");

            // All list options
            this.options.forEach((el, i) => {
                const li = document.createElement("li");
                li.dataset.value = el.value;
                li.innerText = el.innerText;

                if (i === 0) {
                    // First clickable option
                    this.current = document.createElement("div");
                    this.current.innerText = el.innerText;
                    this.dropdown.appendChild(this.current);
                    this.valueInput.value = el.value;
                    li.classList.add("selected");
                }

                this.ul.appendChild(li);
            });

            this.dropdown.appendChild(this.ul);
            this.dropdown.appendChild(this.valueInput);
            this.$el.parentElement.appendChild(this.dropdown);
        }

        addEvents() {
            this.dropdown.addEventListener("click", e => {
                const target = e.target;
                this.dropdown.classList.toggle("selecting");

                // Save new value only when clicked on li
                if (target.tagName === "LI") {
                    this.valueInput.value = target.dataset.value;
                    this.current.innerText = target.innerText;
                }
            });
        }
    }

    document.querySelectorAll(".form-group--dropdown select").forEach(el => {
        new FormSelect(el);
    });
    /**
     * Hide elements when clicked on document
     */
    document.addEventListener("click", function (e) {
        const target = e.target;
        const tagName = target.tagName;

        if (target.classList.contains("dropdown")) return false;

        if (tagName === "LI" && target.parentElement.parentElement.classList.contains("dropdown")) {
            return false;
        }

        if (tagName === "DIV" && target.parentElement.classList.contains("dropdown")) {
            return false;
        }

        document.querySelectorAll(".form-group--dropdown .dropdown").forEach(el => {
            el.classList.remove("selecting");
        });
    });

    /**
     * Switching between form steps
     */
    class FormSteps {
        constructor(form) {
            this.$form = form;
            this.$next = form.querySelectorAll(".next-step");
            this.$prev = form.querySelectorAll(".prev-step");
            this.$step = form.querySelector(".form--steps-counter span");
            this.currentStep = 1;

            this.$stepInstructions = form.querySelectorAll(".form--steps-instructions p");
            const $stepForms = form.querySelectorAll("form > div");
            this.slides = [...this.$stepInstructions, ...$stepForms];

            this.init();
        }

        /**
         * Init all methods
         */
        init() {
            this.events();
            this.updateForm();
        }

        /**
         * All events that are happening in form
         */
        events() {
            // Next step
            this.$next.forEach(btn => {
                btn.addEventListener("click", e => {
                    e.preventDefault();
                    this.currentStep++;
                    this.updateForm();
                });
            });

            // Previous step
            this.$prev.forEach(btn => {
                btn.addEventListener("click", e => {
                    e.preventDefault();
                    this.currentStep--;
                    this.updateForm();
                });
            });

            // Form submit
            this.$form.querySelector("form").addEventListener("submit", e => this.submit(e));
        }

        /**
         * Update form front-end
         * Show next or previous section etc.
         */
        updateForm() {
            this.$step.innerText = this.currentStep;
            /////////////////////////////////////////////////////////



            // TODO: Validation



            /////////////////////////////////////////////////////////
            this.slides.forEach(slide => {
                slide.classList.remove("active");

                if (slide.dataset.step == this.currentStep) {
                    slide.classList.add("active");
                }
            });

            this.$stepInstructions[0].parentElement.parentElement.hidden = this.currentStep >= 5;
            this.$step.parentElement.hidden = this.currentStep >= 5;

            // TODO: get data from inputs and show them in summary
        }

    }

    const
        form = document.querySelector(".form--steps");

    if (form

        !==
        null
    ) {
        new

        FormSteps(form);
    }
})
;